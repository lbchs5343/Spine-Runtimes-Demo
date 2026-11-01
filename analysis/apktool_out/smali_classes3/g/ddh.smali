.class public final enum Lg/ddh;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEFAULT:Lg/ddh;

.field public static final enum DISABLED:Lg/ddh;

.field public static final enum ENABLED:Lg/ddh;

.field public static final synthetic a:[Lg/ddh;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ddh;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/ddh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/ddh;->DEFAULT:Lg/ddh;

    new-instance v1, Lg/ddh;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/ddh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/ddh;->ENABLED:Lg/ddh;

    new-instance v3, Lg/ddh;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/ddh;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/ddh;->DISABLED:Lg/ddh;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ddh;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ddh;->a:[Lg/ddh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/ddh;->zzb:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ddh;
    .locals 1

    const-class v0, Lg/ddh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ddh;

    return-object p0
.end method

.method public static values()[Lg/ddh;
    .locals 1

    sget-object v0, Lg/ddh;->a:[Lg/ddh;

    invoke-virtual {v0}, [Lg/ddh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ddh;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lg/ddh;->zzb:I

    return v0
.end method
