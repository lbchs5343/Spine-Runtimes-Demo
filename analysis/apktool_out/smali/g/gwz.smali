.class public final enum Lg/gwz;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum GENERATED_AND_UNLOADED:Lg/gwz;

.field public static final enum LOADED:Lg/gwz;

.field public static final enum NOT_LOADED:Lg/gwz;

.field public static final enum PROCESS_COMPLETE:Lg/gwz;

.field public static final enum PROCESS_STARTED:Lg/gwz;

.field public static final synthetic a:[Lg/gwz;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg/gwz;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gwz;->NOT_LOADED:Lg/gwz;

    new-instance v1, Lg/gwz;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gwz;->LOADED:Lg/gwz;

    new-instance v3, Lg/gwz;

    const-string v5, "PROCESS_STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/gwz;->PROCESS_STARTED:Lg/gwz;

    new-instance v5, Lg/gwz;

    const-string v7, "PROCESS_COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/gwz;->PROCESS_COMPLETE:Lg/gwz;

    new-instance v7, Lg/gwz;

    const-string v9, "GENERATED_AND_UNLOADED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/gwz;->GENERATED_AND_UNLOADED:Lg/gwz;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/gwz;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lg/gwz;->a:[Lg/gwz;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gwz;
    .locals 1

    const-class v0, Lg/gwz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gwz;

    return-object p0
.end method

.method public static values()[Lg/gwz;
    .locals 1

    sget-object v0, Lg/gwz;->a:[Lg/gwz;

    invoke-virtual {v0}, [Lg/gwz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gwz;

    return-object v0
.end method
