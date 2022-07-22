using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using Dovar3.Data.Models.Mapping;

namespace Dovar3.Data.Models
{
    public partial class dovarContext : DbContext
    {
        static dovarContext()
        {
            Database.SetInitializer<dovarContext>(null);
        }

        public dovarContext()
            : base("Name=dovarContext")
        {
        }

        public DbSet<AgeGroup> AgeGroups { get; set; }
        public DbSet<DataStatu> DataStatus { get; set; }
        public DbSet<DetailOutbreak> DetailOutbreaks { get; set; }
        public DbSet<Diagnosis> Diagnoses { get; set; }
        public DbSet<Disease> Diseases { get; set; }
        public DbSet<DiseaseSpecy> DiseaseSpecies { get; set; }
        public DbSet<ETH_adm3> ETH_adm3 { get; set; }
        public DbSet<Gender> Genders { get; set; }
        public DbSet<GMonth> GMonths { get; set; }
        public DbSet<Location> Locations { get; set; }
        public DbSet<LocationShape> LocationShapes { get; set; }
        public DbSet<LocationType> LocationTypes { get; set; }
        public DbSet<MonthlyReport> MonthlyReports { get; set; }
        public DbSet<MonthlySummary> MonthlySummaries { get; set; }
        public DbSet<Operation> Operations { get; set; }
        public DbSet<OutbreakStatu> OutbreakStatus { get; set; }
        public DbSet<Publicbody> Publicbodies { get; set; }
        public DbSet<PublicBodyType> PublicBodyTypes { get; set; }
        public DbSet<Qualification> Qualifications { get; set; }
        public DbSet<ReportGenerater> ReportGeneraters { get; set; }
        public DbSet<ReportYesNo> ReportYesNoes { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<RoleOperation> RoleOperations { get; set; }
        public DbSet<shape> shapes { get; set; }
        public DbSet<Species> Species { get; set; }
        public DbSet<Status> Status { get; set; }
        public DbSet<TypeOfFarming> TypeOfFarmings { get; set; }
        public DbSet<UserAccount> UserAccounts { get; set; }
        public DbSet<UserRole> UserRoles { get; set; }
        public DbSet<rptAreaCoverage> rptAreaCoverages { get; set; }
        public DbSet<rptAreaCoverage1> rptAreaCoverage1 { get; set; }
        public DbSet<rptAreaCoverageByRVL> rptAreaCoverageByRVLs { get; set; }
        public DbSet<rptAreaCoverageByZone> rptAreaCoverageByZones { get; set; }
        public DbSet<rptAreaCoverageRVL> rptAreaCoverageRVLs { get; set; }
        public DbSet<rptAreaCoverageRVLforMap> rptAreaCoverageRVLforMaps { get; set; }
        public DbSet<rptbackgroundInformation> rptbackgroundInformations { get; set; }
        public DbSet<rptDetailMOnthlyReport> rptDetailMOnthlyReports { get; set; }
        public DbSet<rptDetailMOnthlyReport1> rptDetailMOnthlyReport1 { get; set; }
        public DbSet<rptdetailOutbreak1> rptdetailOutbreak1 { get; set; }
        public DbSet<rptdetailOutbreakSummary> rptdetailOutbreakSummaries { get; set; }
        public DbSet<rptdetailOutbreakSummaryByRegion> rptdetailOutbreakSummaryByRegions { get; set; }
        public DbSet<rptDiseaseOutbreakData> rptDiseaseOutbreakDatas { get; set; }
        public DbSet<rptDiseaseOutbreakDatabyMonth> rptDiseaseOutbreakDatabyMonths { get; set; }
        public DbSet<rptdobyRegion> rptdobyRegions { get; set; }
        public DbSet<rptdobyYear> rptdobyYears { get; set; }
        public DbSet<rptdobyYearWoreda> rptdobyYearWoredas { get; set; }
        public DbSet<rptdobyYearZone> rptdobyYearZones { get; set; }
        public DbSet<rptdodetailOutbreakwithbackground> rptdodetailOutbreakwithbackgrounds { get; set; }
        public DbSet<rptdoDiagnosisVaccinated> rptdoDiagnosisVaccinateds { get; set; }
        public DbSet<rptDovarAreaCoverageByZone> rptDovarAreaCoverageByZones { get; set; }
        public DbSet<rptndobyRegion> rptndobyRegions { get; set; }
        public DbSet<rptndobyWoreda> rptndobyWoredas { get; set; }
        public DbSet<rptndobyZone> rptndobyZones { get; set; }
        public DbSet<rptnonReportingWoreda> rptnonReportingWoredas { get; set; }
        public DbSet<rptnumberOfnonReportingWereda> rptnumberOfnonReportingWeredas { get; set; }
        public DbSet<rptobbymonthyear> rptobbymonthyears { get; set; }
        public DbSet<rptobbyyearmonthworeda> rptobbyyearmonthworedas { get; set; }
        public DbSet<rptPerformanceByRVL3> rptPerformanceByRVL3 { get; set; }
        public DbSet<rptRejectedReport> rptRejectedReports { get; set; }
        public DbSet<rptreportingDiseasebyRegion> rptreportingDiseasebyRegions { get; set; }
        public DbSet<rptreportingDiseasebyRegion1> rptreportingDiseasebyRegion1 { get; set; }
        public DbSet<rptreportingDiseasebyRegionMonth> rptreportingDiseasebyRegionMonths { get; set; }
        public DbSet<rptReportingNonReportingWoreda> rptReportingNonReportingWoredas { get; set; }
        public DbSet<rptReportingPerformance> rptReportingPerformances { get; set; }
        public DbSet<rptReportingPerformance1> rptReportingPerformance1 { get; set; }
        public DbSet<rptReportingPerformanceByRVL2> rptReportingPerformanceByRVL2 { get; set; }
        public DbSet<rptReportingPerformancebyZone> rptReportingPerformancebyZones { get; set; }
        public DbSet<rptReportingPerformancebyZone1> rptReportingPerformancebyZone1 { get; set; }
        public DbSet<rptReportingVsNonReportingWoreda> rptReportingVsNonReportingWoredas { get; set; }
        public DbSet<rptreportingworedasbyregion> rptreportingworedasbyregions { get; set; }
        public DbSet<rptreportingworedasbyzone> rptreportingworedasbyzones { get; set; }
        public DbSet<rptVaccination> rptVaccinations { get; set; }
        public DbSet<rptVaccination1> rptVaccination1 { get; set; }
        public DbSet<rptVaccination2> rptVaccination2 { get; set; }
        public DbSet<rptVaccination3> rptVaccination3 { get; set; }
        public DbSet<rptVaccinationVsOutbreak> rptVaccinationVsOutbreaks { get; set; }
        public DbSet<rptworedacount> rptworedacounts { get; set; }
        public DbSet<rptWoredaCountByZone> rptWoredaCountByZones { get; set; }
        public DbSet<rptZeroReportbyWoreda> rptZeroReportbyWoredas { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new AgeGroupMap());
            modelBuilder.Configurations.Add(new DataStatuMap());
            modelBuilder.Configurations.Add(new DetailOutbreakMap());
            modelBuilder.Configurations.Add(new DiagnosisMap());
            modelBuilder.Configurations.Add(new DiseaseMap());
            modelBuilder.Configurations.Add(new DiseaseSpecyMap());
            modelBuilder.Configurations.Add(new ETH_adm3Map());
            modelBuilder.Configurations.Add(new GenderMap());
            modelBuilder.Configurations.Add(new GMonthMap());
            modelBuilder.Configurations.Add(new LocationMap());
            modelBuilder.Configurations.Add(new LocationShapeMap());
            modelBuilder.Configurations.Add(new LocationTypeMap());
            modelBuilder.Configurations.Add(new MonthlyReportMap());
            modelBuilder.Configurations.Add(new MonthlySummaryMap());
            modelBuilder.Configurations.Add(new OperationMap());
            modelBuilder.Configurations.Add(new OutbreakStatuMap());
            modelBuilder.Configurations.Add(new PublicbodyMap());
            modelBuilder.Configurations.Add(new PublicBodyTypeMap());
            modelBuilder.Configurations.Add(new QualificationMap());
            modelBuilder.Configurations.Add(new ReportGeneraterMap());
            modelBuilder.Configurations.Add(new ReportYesNoMap());
            modelBuilder.Configurations.Add(new RoleMap());
            modelBuilder.Configurations.Add(new RoleOperationMap());
            modelBuilder.Configurations.Add(new shapeMap());
            modelBuilder.Configurations.Add(new SpeciesMap());
            modelBuilder.Configurations.Add(new StatusMap());
            modelBuilder.Configurations.Add(new TypeOfFarmingMap());
            modelBuilder.Configurations.Add(new UserAccountMap());
            modelBuilder.Configurations.Add(new UserRoleMap());
            modelBuilder.Configurations.Add(new rptAreaCoverageMap());
            modelBuilder.Configurations.Add(new rptAreaCoverage1Map());
            modelBuilder.Configurations.Add(new rptAreaCoverageByRVLMap());
            modelBuilder.Configurations.Add(new rptAreaCoverageByZoneMap());
            modelBuilder.Configurations.Add(new rptAreaCoverageRVLMap());
            modelBuilder.Configurations.Add(new rptAreaCoverageRVLforMapMap());
            modelBuilder.Configurations.Add(new rptbackgroundInformationMap());
            modelBuilder.Configurations.Add(new rptDetailMOnthlyReportMap());
            modelBuilder.Configurations.Add(new rptDetailMOnthlyReport1Map());
            modelBuilder.Configurations.Add(new rptdetailOutbreak1Map());
            modelBuilder.Configurations.Add(new rptdetailOutbreakSummaryMap());
            modelBuilder.Configurations.Add(new rptdetailOutbreakSummaryByRegionMap());
            modelBuilder.Configurations.Add(new rptDiseaseOutbreakDataMap());
            modelBuilder.Configurations.Add(new rptDiseaseOutbreakDatabyMonthMap());
            modelBuilder.Configurations.Add(new rptdobyRegionMap());
            modelBuilder.Configurations.Add(new rptdobyYearMap());
            modelBuilder.Configurations.Add(new rptdobyYearWoredaMap());
            modelBuilder.Configurations.Add(new rptdobyYearZoneMap());
            modelBuilder.Configurations.Add(new rptdodetailOutbreakwithbackgroundMap());
            modelBuilder.Configurations.Add(new rptdoDiagnosisVaccinatedMap());
            modelBuilder.Configurations.Add(new rptDovarAreaCoverageByZoneMap());
            modelBuilder.Configurations.Add(new rptndobyRegionMap());
            modelBuilder.Configurations.Add(new rptndobyWoredaMap());
            modelBuilder.Configurations.Add(new rptndobyZoneMap());
            modelBuilder.Configurations.Add(new rptnonReportingWoredaMap());
            modelBuilder.Configurations.Add(new rptnumberOfnonReportingWeredaMap());
            modelBuilder.Configurations.Add(new rptobbymonthyearMap());
            modelBuilder.Configurations.Add(new rptobbyyearmonthworedaMap());
            modelBuilder.Configurations.Add(new rptPerformanceByRVL3Map());
            modelBuilder.Configurations.Add(new rptRejectedReportMap());
            modelBuilder.Configurations.Add(new rptreportingDiseasebyRegionMap());
            modelBuilder.Configurations.Add(new rptreportingDiseasebyRegion1Map());
            modelBuilder.Configurations.Add(new rptreportingDiseasebyRegionMonthMap());
            modelBuilder.Configurations.Add(new rptReportingNonReportingWoredaMap());
            modelBuilder.Configurations.Add(new rptReportingPerformanceMap());
            modelBuilder.Configurations.Add(new rptReportingPerformance1Map());
            modelBuilder.Configurations.Add(new rptReportingPerformanceByRVL2Map());
            modelBuilder.Configurations.Add(new rptReportingPerformancebyZoneMap());
            modelBuilder.Configurations.Add(new rptReportingPerformancebyZone1Map());
            modelBuilder.Configurations.Add(new rptReportingVsNonReportingWoredaMap());
            modelBuilder.Configurations.Add(new rptreportingworedasbyregionMap());
            modelBuilder.Configurations.Add(new rptreportingworedasbyzoneMap());
            modelBuilder.Configurations.Add(new rptVaccinationMap());
            modelBuilder.Configurations.Add(new rptVaccination1Map());
            modelBuilder.Configurations.Add(new rptVaccination2Map());
            modelBuilder.Configurations.Add(new rptVaccination3Map());
            modelBuilder.Configurations.Add(new rptVaccinationVsOutbreakMap());
            modelBuilder.Configurations.Add(new rptworedacountMap());
            modelBuilder.Configurations.Add(new rptWoredaCountByZoneMap());
            modelBuilder.Configurations.Add(new rptZeroReportbyWoredaMap());
        }
    }
}
