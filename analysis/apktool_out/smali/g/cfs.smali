.class public final enum Lg/cfs;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum IGNORE:Lg/cfs;

.field public static final enum READ:Lg/cfs;

.field public static final enum READ_AND_AUTOSAVE_BEFORE_CLOSING:Lg/cfs;

.field public static final enum READ_AND_AUTOSAVE_EVERY_CHANGE:Lg/cfs;

.field public static final synthetic a:[Lg/cfs;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/cfs;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cfs;->READ:Lg/cfs;

    new-instance v1, Lg/cfs;

    const-string v3, "READ_AND_AUTOSAVE_EVERY_CHANGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cfs;->READ_AND_AUTOSAVE_EVERY_CHANGE:Lg/cfs;

    new-instance v3, Lg/cfs;

    const-string v5, "READ_AND_AUTOSAVE_BEFORE_CLOSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/cfs;->READ_AND_AUTOSAVE_BEFORE_CLOSING:Lg/cfs;

    new-instance v5, Lg/cfs;

    const-string v7, "IGNORE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/cfs;->IGNORE:Lg/cfs;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/cfs;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/cfs;->a:[Lg/cfs;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cfs;
    .locals 1

    const-class v0, Lg/cfs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cfs;

    return-object p0
.end method

.method public static values()[Lg/cfs;
    .locals 1

    sget-object v0, Lg/cfs;->a:[Lg/cfs;

    invoke-virtual {v0}, [Lg/cfs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cfs;

    return-object v0
.end method
