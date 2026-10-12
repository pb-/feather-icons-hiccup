# feather-icons-hiccup

Just what it says on the tin. [Feather icons](https://feathericons.com) as [hiccup data](https://github.com/weavejester/hiccup), also usable for [Replicant](https://replicant.fun) and similar libraries.


## Usage

Either build it yourself (`make`; requires `curl`, `tar`, and `babashka`) or download a prebuilt release. Vendoring into your project is highly recommended.

Use with `(svg feather-icon-name)`, for example `(svg zap)`. Some icons, such as `shuffle`, are suffixed with `-icon` to avoid clashing with Clojure builtins.

You can overwrite the SVG attributes by providing a map in the first position, e.g., `(svg {:stroke-width 1} zap)`.

```clojure
icons=> (svg zap)
[:svg {:xmlns "http://www.w3.org/2000/svg", :viewBox "0 0 24 24", :fill "none", :stroke "currentColor", :stroke-width 2, :stroke-linecap "round", :stroke-linejoin "round"} [:polygon {:points "13 2 3 14 12 14 11 22 21 10 12 10 13 2"}]]
icons=> (svg {:stroke-width 1} zap)
[:svg {:xmlns "http://www.w3.org/2000/svg", :viewBox "0 0 24 24", :fill "none", :stroke "currentColor", :stroke-width 1, :stroke-linecap "round", :stroke-linejoin "round"} [:polygon {:points "13 2 3 14 12 14 11 22 21 10 12 10 13 2"}]]
```
