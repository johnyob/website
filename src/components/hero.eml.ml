open! Import

let render () = 
  let child = 
    Container.render @@
    <div class="py-16 relative">
      <h1 class="text-gray-600 text-8xl leading-tight">
        <span class="font-light">Hello! My name is</span><br />
        <span class="font-bold">Alistair</span>
      </h1>
      <button
        class="bg-blue-200 px-6 py-3 text-2xl font-bold text-gray-600 border-blue-300 border-2 rounded-lg shadow-md mt-8"
      >
        More about me →
      </button>
      <img
        class="w-[17.5rem] h-[17.5rem] absolute top-[50%] right-0 translate-y-[-50%] opacity-50"
        src="../asset/img/wave.svg"
      />
    </div>
  in
  <header class="bg-gray-200">
    <%s! child %>
  </header>