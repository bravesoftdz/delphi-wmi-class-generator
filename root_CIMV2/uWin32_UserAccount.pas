/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010-2012
/// Application version 1.0.4674.62299
/// WMI version 7601.17514
/// Creation Date 17-10-2012 18:19:55
/// Namespace root\CIMV2 Class Win32_UserAccount
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_UserAccount.asp
/// </summary>


unit uWin32_UserAccount;

interface

uses
 Classes,
 Activex,
 Variants,
 ComObj,
 uWmiDelphiClass;

type
  {$REGION 'Documentation'}
  /// <summary>
  /// The Win32_UserAccount class contains information about a user account on a 
  /// Win32 system.
  /// </summary>
  {$ENDREGION}
  TWin32_UserAccount=class(TWmiClass)
  private
    FAccountType                        : Cardinal;
    FCaption                            : String;
    FDescription                        : String;
    FDisabled                           : Boolean;
    FDomain                             : String;
    FFullName                           : String;
    FInstallDate                        : TDateTime;
    FLocalAccount                       : Boolean;
    FLockout                            : Boolean;
    FName                               : String;
    FPasswordChangeable                 : Boolean;
    FPasswordExpires                    : Boolean;
    FPasswordRequired                   : Boolean;
    FSID                                : String;
    FSIDType                            : Byte;
    FStatus                             : String;
    procedure SetDisabled(const Value:Boolean);
    procedure SetFullName(const Value:String);
    procedure SetLockout(const Value:Boolean);
    procedure SetPasswordChangeable(const Value:Boolean);
    procedure SetPasswordExpires(const Value:Boolean);
    procedure SetPasswordRequired(const Value:Boolean);
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   {$REGION 'Documentation'}
   /// <summary>
   /// The AccountType property contains flags describing the characteristics of Win32 user account:
   /// UF_TEMP_DUPLICATE_ACCOUNT - Local user account for users whose primary account is in another domain. This account provides user access to this domain, but not to any domain that trusts this domain.
   /// UF_NORMAL_ACCOUNT - default account type that representing a typical user. 
   /// UF_INTERDOMAIN_TRUST_ACCOUNT - account is for a system domain that trusts other domains.
   /// UF_WORKSTATION_TRUST_ACCOUNT - This is a computer account for a Windows NT/Windows 2000 machine that is a member of this domain.
   /// UF_SERVER_TRUST_ACCOUNT - account is for a system backup domain controller that is a member of this domain. 
   /// </summary>
   {$ENDREGION}
   property AccountType : Cardinal read FAccountType;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Caption property is a short textual description (one-line string) of the 
   /// object.
   /// </summary>
   {$ENDREGION}
   property Caption : String read FCaption;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Description property provides a textual description of the object. 
   /// </summary>
   {$ENDREGION}
   property Description : String read FDescription;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Disabled property determines whether the Win32 user account is disabled.
   /// Values: TRUE or FALSE. If TRUE, the user account is disabled.
   /// </summary>
   {$ENDREGION}
   property Disabled : Boolean read FDisabled write SetDisabled;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Domain property indicates the name of the Windows domain to which the user account belongs.
   /// Example: NA-SALES
   /// </summary>
   {$ENDREGION}
   property Domain : String read FDomain;
   {$REGION 'Documentation'}
   /// <summary>
   /// The FullName property indicates the full name of the local user.
   /// Example: Thomas Williams
   /// </summary>
   {$ENDREGION}
   property FullName : String read FFullName write SetFullName;
   {$REGION 'Documentation'}
   /// <summary>
   /// The InstallDate property is datetime value indicating when the object was 
   /// installed. A lack of a value does not indicate that the object is not installed.
   /// </summary>
   {$ENDREGION}
   property InstallDate : TDateTime read FInstallDate;
   {$REGION 'Documentation'}
   /// <summary>
   /// The LocalAccount property indicates whether the account is defined on the local 
   /// machine. To retrieve only accounts defined on the local machine state a query 
   /// that includes the condition 'LocalAccount=TRUE'.
   /// </summary>
   {$ENDREGION}
   property LocalAccount : Boolean read FLocalAccount;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Lockout property determines whether the user account is locked out of the Win32 system.
   /// Values: TRUE or FALSE. If TRUE, the user account is locked out.
   /// </summary>
   {$ENDREGION}
   property Lockout : Boolean read FLockout write SetLockout;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Name property indicates the name of the Win32 user account on the domain specified by the Domain member of this class.
   /// Example: thomasw
   /// </summary>
   {$ENDREGION}
   property Name : String read FName;
   {$REGION 'Documentation'}
   /// <summary>
   /// The PasswordChangeable property determines whether the password on the Win32 user account can be changed.
   /// Values: TRUE or FALSE. If TRUE, the password can be changed.
   /// </summary>
   {$ENDREGION}
   property PasswordChangeable : Boolean read FPasswordChangeable write SetPasswordChangeable;
   {$REGION 'Documentation'}
   /// <summary>
   /// The PasswordExpires property determines whether the password on the Win32 user account will expire.
   /// Values: TRUE or FALSE. If TRUE, the password will expire.
   /// </summary>
   {$ENDREGION}
   property PasswordExpires : Boolean read FPasswordExpires write SetPasswordExpires;
   {$REGION 'Documentation'}
   /// <summary>
   /// The PasswordRequired property determines whether a password is required on the Win32 user account.
   /// Values: TRUE or FALSE. If TRUE, a password is required.
   /// </summary>
   {$ENDREGION}
   property PasswordRequired : Boolean read FPasswordRequired write SetPasswordRequired;
   {$REGION 'Documentation'}
   /// <summary>
   /// The SID property contains the security identifier (SID) for this account. a SID 
   /// is a string value of variable length used to identify a trustee. Each account 
   /// has a unique SID issued by an authority (such as a Windows domain), stored in a 
   /// security database. When a user logs on, the system retrieves the 
   /// user's SID from the database and places it in the user's access token. The 
   /// system uses the SID in the user's access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot be used again to identify another user or group.
   /// </summary>
   {$ENDREGION}
   property SID : String read FSID;
   {$REGION 'Documentation'}
   /// <summary>
   /// The SIDType property contains enumerated values that specify the type of security identifier (SID). SIDTypes include:
   /// SidTypeUser - Indicates a user SID.
   /// SidTypeGroup - Indicates a group SID.
   /// SidTypeDomain - Indicates a domain SID.
   /// SidTypeAlias - Indicates an alias SID.
   /// SidTypeWellKnownGroup - Indicates a SID for a well-known group.
   /// SidTypeDeletedAccount - Indicates a SID for a deleted account.
   /// SidTypeInvalid - Indicates an invalid SID.
   /// SidTypeUnknown - Indicates an unknown SID type.
   /// SidTypeComputer - Indicates a SID for a computer.
   /// </summary>
   {$ENDREGION}
   property SIDType : Byte read FSIDType;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Status property is a string indicating the current status of the object. 
   /// Various operational and non-operational statuses can be defined. Operational 
   /// statuses are "OK", "Degraded" and "Pred Fail". "Pred Fail" indicates that an 
   /// element may be functioning properly but predicting a failure in the near 
   /// future. An example is a SMART-enabled hard drive. Non-operational statuses can 
   /// also be specified. These are "Error", "Starting", "Stopping" and "Service". The 
   /// latter, "Service", could apply during mirror-resilvering of a disk, reload of a 
   /// user permissions list, or other administrative work. Not all such work is on-
   /// line, yet the managed element is neither "OK" nor in one of the other states.
   /// </summary>
   {$ENDREGION}
   property Status : String read FStatus;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Rename() allows for the renaming of the user account name; a key in this 
   /// class. The functionality to change the key property "Name" is implemented as a 
   /// method to provide a separate context for the new name distinguishable from the 
   /// key name associated with the instance to be modified in this class.
   /// </summary>
   /// <param name="Name">
   /// The Name property indicates the name of the Win32 user account on the domain 
   /// specified by the Domain member of this class.
   /// Example: thomasw
   /// </param>
   {$ENDREGION}
   function Rename(const Name : String): Integer;
   procedure SetCollectionIndex(Index : Integer); override;
  end;


  {$REGION 'Documentation'}
  /// <summary>
  /// Return the description for the result of the function TWin32_UserAccount.Rename
  /// </summary>
  {$ENDREGION}
  function GetResultRenameAsString(const ReturnValue:Integer) : string;
  {$REGION 'Documentation'}
  /// <summary>
  /// Return the description for the value of the property TWin32_UserAccount.SIDType
  /// </summary>
  {$ENDREGION}
  function GetSIDTypeAsString(const APropValue:Byte) : string;

implementation


function GetResultRenameAsString(const ReturnValue:Integer) : string;
begin
Result:='';
  case ReturnValue of
    0 : Result:='Success';
    1 : Result:='Instance not found';
    2 : Result:='Instance required';
    3 : Result:='Invalid parameter';
    4 : Result:='User not found';
    5 : Result:='Domain not found';
    6 : Result:='Operation is allowed only on the primary domain controller of the domain';
    7 : Result:='Operation is not allowed on the last administrative account.';
    8 : Result:='Operation is not allowed on specified special groups; user, admin, local or guest.';
    9 : Result:='Other API error';
    10 : Result:='Internal error';
  end;
end;

function GetSIDTypeAsString(const APropValue:Byte) : string;
begin
Result:='';
  case APropValue of
    1 : Result:='SidTypeUser';
    2 : Result:='SidTypeGroup';
    3 : Result:='SidTypeDomain';
    4 : Result:='SidTypeAlias';
    5 : Result:='SidTypeWellKnownGroup';
    6 : Result:='SidTypeDeletedAccount';
    7 : Result:='SidTypeInvalid';
    8 : Result:='SidTypeUnknown';
    9 : Result:='SidTypeComputer';
  end;
end;

{TWin32_UserAccount}

constructor TWin32_UserAccount.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_UserAccount');
end;

destructor TWin32_UserAccount.Destroy;
begin
  inherited;
end;

procedure TWin32_UserAccount.SetDisabled(const Value:Boolean);
begin
  GetInstanceOf.Disabled:=Value;
  GetInstanceOf.Put_();
  FDisabled := Value;
end;

procedure TWin32_UserAccount.SetFullName(const Value:String);
begin
  GetInstanceOf.FullName:=Value;
  GetInstanceOf.Put_();
  FFullName := Value;
end;

procedure TWin32_UserAccount.SetLockout(const Value:Boolean);
begin
  GetInstanceOf.Lockout:=Value;
  GetInstanceOf.Put_();
  FLockout := Value;
end;

procedure TWin32_UserAccount.SetPasswordChangeable(const Value:Boolean);
begin
  GetInstanceOf.PasswordChangeable:=Value;
  GetInstanceOf.Put_();
  FPasswordChangeable := Value;
end;

procedure TWin32_UserAccount.SetPasswordExpires(const Value:Boolean);
begin
  GetInstanceOf.PasswordExpires:=Value;
  GetInstanceOf.Put_();
  FPasswordExpires := Value;
end;

procedure TWin32_UserAccount.SetPasswordRequired(const Value:Boolean);
begin
  GetInstanceOf.PasswordRequired:=Value;
  GetInstanceOf.Put_();
  FPasswordRequired := Value;
end;

procedure TWin32_UserAccount.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FAccountType             := VarCardinalNull(inherited Value['AccountType']);
    FCaption                 := VarStrNull(inherited Value['Caption']);
    FDescription             := VarStrNull(inherited Value['Description']);
    FDisabled                := VarBoolNull(inherited Value['Disabled']);
    FDomain                  := VarStrNull(inherited Value['Domain']);
    FFullName                := VarStrNull(inherited Value['FullName']);
    FInstallDate             := VarDateTimeNull(inherited Value['InstallDate']);
    FLocalAccount            := VarBoolNull(inherited Value['LocalAccount']);
    FLockout                 := VarBoolNull(inherited Value['Lockout']);
    FName                    := VarStrNull(inherited Value['Name']);
    FPasswordChangeable      := VarBoolNull(inherited Value['PasswordChangeable']);
    FPasswordExpires         := VarBoolNull(inherited Value['PasswordExpires']);
    FPasswordRequired        := VarBoolNull(inherited Value['PasswordRequired']);
    FSID                     := VarStrNull(inherited Value['SID']);
    FSIDType                 := VarByteNull(inherited Value['SIDType']);
    FStatus                  := VarStrNull(inherited Value['Status']);
  end;
end;


//not static, OutParams=1, InParams>0
function TWin32_UserAccount.Rename(const Name : String): Integer;
var
  ReturnValue : OleVariant;
begin
  ReturnValue := GetInstanceOf.Rename(Name);
  Result      := VarIntegerNull(ReturnValue);
end;

end.
