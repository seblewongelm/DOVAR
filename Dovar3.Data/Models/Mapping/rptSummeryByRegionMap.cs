using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptSummeryByRegionMap : EntityTypeConfiguration<rptSummeryByRegion>
    {
        public rptSummeryByRegionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Id, t.ReportYear, t.MonthName, t.Region, t.Woreda, t.ReportSenderName, t.QualificationName, t.YesNo, t.PublicbodyName, t.Disease, t.Species, t.LocationId });

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.MonthName)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.ReportSenderName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.QualificationName)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.ReportSenderPhone)
                .HasMaxLength(30);

            this.Property(t => t.YesNo)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.PublicbodyName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.OutbreakRefNo)
                .HasMaxLength(15);

            this.Property(t => t.DiagnosisName)
                .HasMaxLength(50);

            this.Property(t => t.StatusName)
                .HasMaxLength(50);

            this.Property(t => t.AgeGroupName)
                .HasMaxLength(50);

            this.Property(t => t.FarmingSystem)
                .HasMaxLength(50);

            this.Property(t => t.LocationId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptSummeryByRegion");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
            this.Property(t => t.ReportSenderName).HasColumnName("ReportSenderName");
            this.Property(t => t.QualificationName).HasColumnName("QualificationName");
            this.Property(t => t.ReportSenderPhone).HasColumnName("ReportSenderPhone");
            this.Property(t => t.YesNo).HasColumnName("YesNo");
            this.Property(t => t.PublicbodyName).HasColumnName("PublicbodyName");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.NewCases).HasColumnName("NewCases");
            this.Property(t => t.Death).HasColumnName("Death");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.AnimalAtRisk).HasColumnName("AnimalAtRisk");
            this.Property(t => t.Control).HasColumnName("Control");
            this.Property(t => t.Prophylaxis).HasColumnName("Prophylaxis");
            this.Property(t => t.OutbreakRefNo).HasColumnName("OutbreakRefNo");
            this.Property(t => t.DiagnosisName).HasColumnName("DiagnosisName");
            this.Property(t => t.StatusName).HasColumnName("StatusName");
            this.Property(t => t.DateFirstCase).HasColumnName("DateFirstCase");
            this.Property(t => t.DateReported).HasColumnName("DateReported");
            this.Property(t => t.Cases).HasColumnName("Cases");
            this.Property(t => t.Deaths).HasColumnName("Deaths");
            this.Property(t => t.Expr1).HasColumnName("Expr1");
            this.Property(t => t.TotalCases).HasColumnName("TotalCases");
            this.Property(t => t.TotalDeaths).HasColumnName("TotalDeaths");
            this.Property(t => t.TotalSlaughtered).HasColumnName("TotalSlaughtered");
            this.Property(t => t.AgeGroupName).HasColumnName("AgeGroupName");
            this.Property(t => t.InfectedUnits).HasColumnName("InfectedUnits");
            this.Property(t => t.FarmingSystem).HasColumnName("FarmingSystem");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
        }
    }
}
