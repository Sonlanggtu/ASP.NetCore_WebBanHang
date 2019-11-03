using Microsoft.AspNetCore.Hosting;

[assembly: HostingStartup(typeof(TeduCoreApp.Areas.Identity.IdentityHostingStartup))]
namespace TeduCoreApp.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) =>
            {
            });
        }
    }
}