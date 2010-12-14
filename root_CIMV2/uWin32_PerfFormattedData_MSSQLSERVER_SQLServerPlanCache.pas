// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
// WMI version 7600.16385
// Namespace root\CIMV2 Class Win32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache
// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache.asp
unit uWin32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache;

interface

uses

 Activex,
 ComObj,
 uWmiDelphiClass;

type
   ///<summary>
   ///This defines cache counters
   ///</summary>
  TWin32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache=class(TWmiClass)
  private
   FCacheHitRatio                      : Int64;
   FCacheObjectCounts                  : Int64;
   FCacheObjectsinuse                  : Int64;
   FCachePages                         : Int64;
   FCaption                            : String;
   FDescription                        : String;
   FFrequency_Object                   : Int64;
   FFrequency_PerfTime                 : Int64;
   FFrequency_Sys100NS                 : Int64;
   FName                               : String;
   FTimestamp_Object                   : Int64;
   FTimestamp_PerfTime                 : Int64;
   FTimestamp_Sys100NS                 : Int64;
  public
   ///<summary>
   ///Ratio between cache hits and lookups
   ///</summary>
   property CacheHitRatio : Int64 read FCacheHitRatio;
   ///<summary>
   ///Number of cache objects in the cache
   ///</summary>
   property CacheObjectCounts : Int64 read FCacheObjectCounts;
   ///<summary>
   ///Number of cache objects in use
   ///</summary>
   property CacheObjectsinuse : Int64 read FCacheObjectsinuse;
   ///<summary>
   ///Number of 8k pages used by cache objects
   ///</summary>
   property CachePages : Int64 read FCachePages;
   ///<summary>
   ///A short textual description (one-line string) for the statistic or metric.
   ///</summary>
   property Caption : String read FCaption;
   ///<summary>
   ///A textual description of the statistic or metric.
   ///</summary>
   property Description : String read FDescription;
   ///<summary>
   ///A textual description of the statistic or metric.
   ///</summary>
   property Frequency_Object : Int64 read FFrequency_Object;
   ///<summary>
   ///A textual description of the statistic or metric.
   ///</summary>
   property Frequency_PerfTime : Int64 read FFrequency_PerfTime;
   ///<summary>
   ///A textual description of the statistic or metric.
   ///</summary>
   property Frequency_Sys100NS : Int64 read FFrequency_Sys100NS;
   ///<summary>
   ///The Name property defines the label by which the statistic or metric is known. 
   ///When subclassed, the property can be overridden to be a Key property. 
   ///</summary>
   property Name : String read FName;
   ///<summary>
   ///The Name property defines the label by which the statistic or metric is known. 
   ///When subclassed, the property can be overridden to be a Key property. 
   ///</summary>
   property Timestamp_Object : Int64 read FTimestamp_Object;
   ///<summary>
   ///The Name property defines the label by which the statistic or metric is known. 
   ///When subclassed, the property can be overridden to be a Key property. 
   ///</summary>
   property Timestamp_PerfTime : Int64 read FTimestamp_PerfTime;
   ///<summary>
   ///The Name property defines the label by which the statistic or metric is known. 
   ///When subclassed, the property can be overridden to be a Key property. 
   ///</summary>
   property Timestamp_Sys100NS : Int64 read FTimestamp_Sys100NS;
   procedure SetCollectionIndex(Index:Integer); override;
   constructor Create; overload;
   constructor Create(LoadData:boolean); overload;
  end;


implementation


{TWin32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache}

 constructor TWin32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache.Create;
 begin
   Create(True);
 end;

 constructor TWin32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache.Create(LoadData: boolean);
 begin
   Create(LoadData,'root\CIMV2','Win32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache');
 end;

 procedure TWin32_PerfFormattedData_MSSQLSERVER_SQLServerPlanCache.SetCollectionIndex(Index: Integer);
 begin
    if (Index>=0) and (Index<=FWmiCollection.Count-1) then
    begin
       FWmiCollectionIndex:=Index;
       FCacheHitRatio                       :=VarInt64Null(GetPropertyValue('CacheHitRatio'));
       FCacheObjectCounts                   :=VarInt64Null(GetPropertyValue('CacheObjectCounts'));
       FCacheObjectsinuse                   :=VarInt64Null(GetPropertyValue('CacheObjectsinuse'));
       FCachePages                          :=VarInt64Null(GetPropertyValue('CachePages'));
       FCaption                             :=VarStrNull(GetPropertyValue('Caption'));
       FDescription                         :=VarStrNull(GetPropertyValue('Description'));
       FFrequency_Object                    :=VarInt64Null(GetPropertyValue('Frequency_Object'));
       FFrequency_PerfTime                  :=VarInt64Null(GetPropertyValue('Frequency_PerfTime'));
       FFrequency_Sys100NS                  :=VarInt64Null(GetPropertyValue('Frequency_Sys100NS'));
       FName                                :=VarStrNull(GetPropertyValue('Name'));
       FTimestamp_Object                    :=VarInt64Null(GetPropertyValue('Timestamp_Object'));
       FTimestamp_PerfTime                  :=VarInt64Null(GetPropertyValue('Timestamp_PerfTime'));
       FTimestamp_Sys100NS                  :=VarInt64Null(GetPropertyValue('Timestamp_Sys100NS'));
    end;
 end;

end.