using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Microsoft.EntityFrameworkCore;
using Inlamningsuppgift1.Models;


namespace Inlamningsuppgift1
{
    public class Startup
    {
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc(option => option.EnableEndpointRouting = false);
            //Connectionsträngen bör egentligen ligga I en config fil men vi tittar mer
            //på det senare
            var conn = @"Server=localhost;Database=RecipeDB;Trusted_Connection=True; ConnectRetryCount=0";
            services.AddDbContext<RecipeDBContext>(options => options.UseSqlServer(conn));

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseStaticFiles();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                name: "Default",
                template: "{controller=Recipe}/{action=ViewRecipes}"
                    );

            });
        }
    }
}
