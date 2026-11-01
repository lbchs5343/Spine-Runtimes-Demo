.class public final enum Lg/coi;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/coi;

.field public static final enum d:Lg/coi;

.field public static final enum dq:Lg/coi;

.field public static final enum ox:Lg/coi;


# instance fields
.field final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lg/coi;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/coi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/coi;->dq:Lg/coi;

    new-instance v1, Lg/coi;

    const-string v4, "NORMAL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lg/coi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/coi;->d:Lg/coi;

    new-instance v4, Lg/coi;

    const-string v6, "HIGHT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lg/coi;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/coi;->ox:Lg/coi;

    new-array v6, v7, [Lg/coi;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lg/coi;->a:[Lg/coi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/coi;->p:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/coi;
    .locals 1

    const-class v0, Lg/coi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/coi;

    return-object p0
.end method

.method public static values()[Lg/coi;
    .locals 1

    sget-object v0, Lg/coi;->a:[Lg/coi;

    invoke-virtual {v0}, [Lg/coi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/coi;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lg/coi;->p:I

    return v0
.end method
