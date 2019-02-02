"""
  A demonstration of Julia Sockets

  Referneces:
  * https://docs.julialang.org/en/v1/manual/networking-and-streams/
"""

using Sockets
@async begin
  server = listen(2000)
  while true
    sock = accept(server)
    print("Hello World\n")
  end
end

