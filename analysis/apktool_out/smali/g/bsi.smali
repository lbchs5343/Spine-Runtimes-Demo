.class public final enum Lg/bsi;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DISABLE_IN_GUI:Lg/bsi;

.field public static final enum HIDE_IN_GUI:Lg/bsi;

.field public static final enum NOT_CHANGING_CODE:Lg/bsi;

.field public static final enum PER_PROJECT:Lg/bsi;

.field public static final synthetic a:[Lg/bsi;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/bsi;

    const-string v1, "PER_PROJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bsi;->PER_PROJECT:Lg/bsi;

    new-instance v1, Lg/bsi;

    const-string v3, "HIDE_IN_GUI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bsi;->HIDE_IN_GUI:Lg/bsi;

    new-instance v3, Lg/bsi;

    const-string v5, "DISABLE_IN_GUI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bsi;->DISABLE_IN_GUI:Lg/bsi;

    new-instance v5, Lg/bsi;

    const-string v7, "NOT_CHANGING_CODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/bsi;->NOT_CHANGING_CODE:Lg/bsi;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/bsi;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/bsi;->a:[Lg/bsi;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bsi;
    .locals 1

    const-class v0, Lg/bsi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bsi;

    return-object p0
.end method

.method public static values()[Lg/bsi;
    .locals 1

    sget-object v0, Lg/bsi;->a:[Lg/bsi;

    invoke-virtual {v0}, [Lg/bsi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bsi;

    return-object v0
.end method
