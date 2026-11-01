.class public Lms/bz/bd/c/Pgl/n1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x9

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "50d221"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lms/bz/bd/c/Pgl/n1;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x32t
        0x62t
        0x40t
        0x8t
        0x5dt
        0x77t
        0x78t
        0x41t
        0x67t
    .end array-data
.end method
