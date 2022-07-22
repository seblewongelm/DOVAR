using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptdetailOutbreakMap : EntityTypeConfiguration<rptdetailOutbreak>
    {
        public rptdetailOutbreakMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Id, t.Year, t.LocationId, t.ReportMonth });

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Year)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Month)
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.Kebele)
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .HasMaxLength(50);

            this.Property(t => t.OutbreakRefNo)
                .HasMaxLength(15);

            this.Property(t => t.Diagnosis)
                .HasMaxLength(50);

            this.Property(t => t.Status)
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .HasMaxLength(100);

            this.Property(t => t.AgeGroupName)
                .HasMaxLength(50);

            this.Property(t => t.FarmingSystem)
                .HasMaxLength(50);

            this.Property(t => t.LocationId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.ReportMonth)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptdetailOutbreak");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Kebele).HasColumnName("Kebele");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.OutbreakRefNo).HasColumnName("OutbreakRefNo");
            this.Property(t => t.Diagnosis).HasColumnName("Diagnosis");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.DateReported).HasColumnName("DateReported");
            this.Property(t => t.DateFirstCase).HasColumnName("DateFirstCase");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Cases).HasColumnName("Cases");
            this.Property(t => t.Deaths).HasColumnName("Deaths");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.TotalCases).HasColumnName("TotalCases");
            this.Property(t => t.TotalDeaths).HasColumnName("TotalDeaths");
            this.Property(t => t.TotalSlaughtered).HasColumnName("TotalSlaughtered");
            this.Property(t => t.AgeGroupName).HasColumnName("AgeGroupName");
            this.Property(t => t.InfectedUnits).HasColumnName("InfectedUnits");
            this.Property(t => t.FarmingSystem).HasColumnName("FarmingSystem");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.PublicBodyId).HasColumnName("PublicBodyId");
        }
    }
}
