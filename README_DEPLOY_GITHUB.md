# GitHub Pages 发布说明

这个目录是无银行卡方案的发布包，只包含 480p HLS 版本：

- `index.html`
- `hls.min.js`
- `hls/master.m3u8`
- `hls/480p/*`
- `subtitles/*`

GitHub Pages 官方限制包括：发布站点不超过 1GB、源仓库推荐不超过 1GB、软带宽限制 100GB/月。这个发布包约 278MB，单个视频分片不到 1MB。

## 发布步骤

1. 在 GitHub 新建一个公开仓库，例如 `watch-video`.
2. 不要勾选 README、.gitignore 或 license。
3. 复制仓库 HTTPS 地址，例如：
   `https://github.com/你的用户名/watch-video.git`
4. 在 PowerShell 运行：

```powershell
E:\迅雷云盘\商海通牒2011_github_pages\publish_to_github.ps1 -RepoUrl "https://github.com/你的用户名/watch-video.git"
```

5. 推送完成后，打开仓库页面：
   `Settings` -> `Pages` -> `Build and deployment`
6. Source 选择 `Deploy from a branch`，Branch 选择 `main` 和 `/ (root)`，保存。
7. 等待 1-3 分钟，GitHub 会给出访问地址：
   `https://你的用户名.github.io/watch-video/`

朋友打开这个地址就能用 Edge 的 Video Together 同步播放。
