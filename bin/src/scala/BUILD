scala_library(
  name = 'hello-lib',
  sources = '**/*.scala',

)

jvm_binary(
  name = 'hello',
  sources = '**/*.scala',
  main = 'example.Hello',
  dependencies = [ ':hello-lib' ]
)
