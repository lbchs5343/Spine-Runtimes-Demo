.class public final enum Lg/bpi;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DIALOG:Lg/bpi;

.field public static final enum FINISHED:Lg/bpi;

.field public static final enum SEARCH:Lg/bpi;

.field public static final enum VERIFY:Lg/bpi;

.field public static final synthetic a:[Lg/bpi;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/bpi;

    const-string v1, "SEARCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bpi;->SEARCH:Lg/bpi;

    new-instance v1, Lg/bpi;

    const-string v3, "DIALOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bpi;->DIALOG:Lg/bpi;

    new-instance v3, Lg/bpi;

    const-string v5, "VERIFY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bpi;->VERIFY:Lg/bpi;

    new-instance v5, Lg/bpi;

    const-string v7, "FINISHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/bpi;->FINISHED:Lg/bpi;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/bpi;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/bpi;->a:[Lg/bpi;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bpi;
    .locals 1

    const-class v0, Lg/bpi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bpi;

    return-object p0
.end method

.method public static values()[Lg/bpi;
    .locals 1

    sget-object v0, Lg/bpi;->a:[Lg/bpi;

    invoke-virtual {v0}, [Lg/bpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bpi;

    return-object v0
.end method
