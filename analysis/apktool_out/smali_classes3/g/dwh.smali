.class public final enum Lg/dwh;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lg/dwh;

.field public static final enum zza:Lg/dwh;

.field public static final enum zzb:Lg/dwh;

.field public static final enum zzc:Lg/dwh;

.field public static final enum zzd:Lg/dwh;

.field public static final enum zze:Lg/dwh;

.field public static final enum zzf:Lg/dwh;

.field public static final enum zzg:Lg/dwh;

.field public static final enum zzh:Lg/dwh;

.field public static final enum zzi:Lg/dwh;

.field public static final enum zzj:Lg/dwh;


# instance fields
.field private final zzl:Ljava/lang/Class;

.field private final zzm:Ljava/lang/Class;

.field private final zzn:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lg/dwh;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    invoke-direct/range {v0 .. v5}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v0, Lg/dwh;->zza:Lg/dwh;

    new-instance v1, Lg/dwh;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "INT"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v1, Lg/dwh;->zzb:Lg/dwh;

    new-instance v8, Lg/dwh;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v9, "LONG"

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Long;

    invoke-direct/range {v8 .. v13}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v2, v8

    sput-object v2, Lg/dwh;->zzc:Lg/dwh;

    new-instance v8, Lg/dwh;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    invoke-direct/range {v8 .. v13}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v3, v8

    sput-object v3, Lg/dwh;->zzd:Lg/dwh;

    new-instance v8, Lg/dwh;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const-string v9, "DOUBLE"

    const/4 v10, 0x4

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Double;

    invoke-direct/range {v8 .. v13}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v5, v8

    sput-object v5, Lg/dwh;->zze:Lg/dwh;

    new-instance v8, Lg/dwh;

    const-class v12, Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v8 .. v13}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v6, v8

    sput-object v6, Lg/dwh;->zzf:Lg/dwh;

    new-instance v8, Lg/dwh;

    const-class v12, Ljava/lang/String;

    const-string v13, ""

    const-string v9, "STRING"

    const/4 v10, 0x6

    const-class v11, Ljava/lang/String;

    invoke-direct/range {v8 .. v13}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v14, v8

    sput-object v14, Lg/dwh;->zzg:Lg/dwh;

    new-instance v8, Lg/dwh;

    const-class v12, Lg/cyb;

    sget-object v13, Lg/cyb;->d:Lg/crn;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    const-class v11, Lg/cyb;

    invoke-direct/range {v8 .. v13}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v15, v8

    sput-object v15, Lg/dwh;->zzh:Lg/dwh;

    new-instance v8, Lg/dwh;

    const-class v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    const-string v9, "ENUM"

    const/16 v10, 0x8

    move-object v11, v4

    invoke-direct/range {v8 .. v13}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v8, Lg/dwh;->zzi:Lg/dwh;

    new-instance v16, Lg/dwh;

    const-class v20, Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v17, "MESSAGE"

    const/16 v18, 0x9

    const-class v19, Ljava/lang/Object;

    invoke-direct/range {v16 .. v21}, Lg/dwh;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v16, Lg/dwh;->zzj:Lg/dwh;

    const/16 v4, 0xa

    new-array v4, v4, [Lg/dwh;

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object v6, v4, v0

    const/4 v0, 0x6

    aput-object v14, v4, v0

    const/4 v0, 0x7

    aput-object v15, v4, v0

    const/16 v0, 0x8

    aput-object v8, v4, v0

    const/16 v0, 0x9

    aput-object v16, v4, v0

    sput-object v4, Lg/dwh;->a:[Lg/dwh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/dwh;->zzl:Ljava/lang/Class;

    iput-object p4, p0, Lg/dwh;->zzm:Ljava/lang/Class;

    iput-object p5, p0, Lg/dwh;->zzn:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lg/dwh;
    .locals 1

    sget-object v0, Lg/dwh;->a:[Lg/dwh;

    invoke-virtual {v0}, [Lg/dwh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dwh;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lg/dwh;->zzm:Ljava/lang/Class;

    return-object v0
.end method
