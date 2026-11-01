.class public final enum Lg/fol;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum FIXED:Lg/fol;

.field public static final enum MATCH_CONSTRAINT:Lg/fol;

.field public static final enum MATCH_PARENT:Lg/fol;

.field public static final enum WRAP_CONTENT:Lg/fol;

.field public static final synthetic a:[Lg/fol;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/fol;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/fol;->FIXED:Lg/fol;

    new-instance v1, Lg/fol;

    const-string v3, "WRAP_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/fol;->WRAP_CONTENT:Lg/fol;

    new-instance v3, Lg/fol;

    const-string v5, "MATCH_CONSTRAINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    new-instance v5, Lg/fol;

    const-string v7, "MATCH_PARENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/fol;->MATCH_PARENT:Lg/fol;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/fol;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/fol;->a:[Lg/fol;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fol;
    .locals 1

    const-class v0, Lg/fol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fol;

    return-object p0
.end method

.method public static values()[Lg/fol;
    .locals 1

    sget-object v0, Lg/fol;->a:[Lg/fol;

    invoke-virtual {v0}, [Lg/fol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fol;

    return-object v0
.end method
