using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using Dovar3.Data.Models.Mapping;

namespace Dovar3.Data.Models
{
    public partial class masterContext : DbContext
    {
        static masterContext()
        {
            Database.SetInitializer<masterContext>(null);
        }

        public masterContext()
            : base("Name=masterContext")
        {
        }

        public DbSet<MSreplication_options> MSreplication_options { get; set; }
        public DbSet<spt_fallback_db> spt_fallback_db { get; set; }
        public DbSet<spt_fallback_dev> spt_fallback_dev { get; set; }
        public DbSet<spt_fallback_usg> spt_fallback_usg { get; set; }
        public DbSet<spt_monitor> spt_monitor { get; set; }
        public DbSet<spt_values> spt_values { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new MSreplication_optionsMap());
            modelBuilder.Configurations.Add(new spt_fallback_dbMap());
            modelBuilder.Configurations.Add(new spt_fallback_devMap());
            modelBuilder.Configurations.Add(new spt_fallback_usgMap());
            modelBuilder.Configurations.Add(new spt_monitorMap());
            modelBuilder.Configurations.Add(new spt_valuesMap());
        }
    }
}
