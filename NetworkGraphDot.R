library(DiagrammeR)

grViz("
digraph {
      
      graph [overlap = false]      
      
      node [shape = circle,
      style = filled,
      color = black,
      label = '']
      
      node [fillcolor = green]
      a [label = '192.168.248.21']
      
      node [fillcolor = red]
      b [label = '176.53.17.23']
      c [label = '46.191.175.120']
      d [label = '200.112.252.155']
      e [label = '177.77.205.145']
      f [label = '124.39.226.162']
      
      node [fillcolor = orange]
      g [label = 'TCP']
      h [label = 'HTTP']
      
      node [fillcolor = cyan]
      i [label = '60']
      j [label = '220']
      
      edge [color = black]
      a -> {b c d e f}
      b -> a
      c -> a
      d -> a
      e -> a
      f -> a
      
      edge [color = orange]
      g -> {a b c d e f}
      
      edge [color = purple]
      h -> {a b}
      
      edge [color = cyan]
      g -> i
      h -> j
      }",
engine = "dot")