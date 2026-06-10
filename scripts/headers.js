// 生成 _headers 文件，确保 Cloudflare Pages 正确响应音频文件的 Range 请求
hexo.extend.filter.register('after_generate', function () {
  const content = [
    '/music/*',
    '  Accept-Ranges: bytes',
    '  Access-Control-Allow-Origin: *',
    '',
    '/*.m4a',
    '  Content-Type: audio/mp4',
    '/*.mp3',
    '  Content-Type: audio/mpeg',
    '',
  ].join('\n')

  const fs = require('fs')
  if (!fs.existsSync(this.public_dir)) fs.mkdirSync(this.public_dir, { recursive: true })
  fs.writeFileSync(this.public_dir + '_headers', content)
  hexo.log.debug('_headers 文件已生成')
})
