# Gary源和Cathy源的分流规则

本仓库为自动维护的 IPTV 本机节点白名单+ 自动更新规则分流集……的 dat 版本。

数据源取自

https://github.com/marcuccilli/gary

https://github.com/marcuccilli/Cathy

本仓库仅进行数据提取整理成 dat 格式方便在 DAED 及其他软件中使用。

最终生成文件地址：

https://raw.githubusercontent.com/icandura/garytvdat/refs/heads/main/output/gtvsite.dat

https://raw.githubusercontent.com/icandura/garytvdat/refs/heads/main/output/gtvip.dat

DAE/DAED中引用方法
```
domain(ext:"gtvsite.dat:giptv")->GIPTV
dip(ext:"gtvip.dat:giptv")->GIPTV
domain(ext:"gtvsite.dat:ciptv")->CIPTV
dip(ext:"gtvip.dat:ciptv")->CIPTV
```

## 数据源版本
- Gary源最新更新：<!-- GARY_DATE -->2026-10-28 00:46:37<!-- GARY_DATE -->
- Cathy源最新更新：<!-- CATHY_DATE -->2026-10-29 01:50:36<!-- CATHY_DATE -->

## 生成文件
- `gtvsite.dat`：包含分类 `giptv`（Gary）、`ciptv`（Cathy）
- `gtvip.dat`：包含分类 `giptv`（Gary）、`ciptv`（Cathy）
