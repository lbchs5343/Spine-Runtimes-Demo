.class public final Lg/nt;
.super Lg/fqd;
.source "SourceFile"


# static fields
.field public static final a:Lg/nt;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/nt;

    sget v2, Lg/fga;->g:I

    sget v3, Lg/fga;->b:I

    sget-wide v5, Lg/fga;->c:J

    sget-object v4, Lg/fga;->d:Ljava/lang/String;

    invoke-direct {v0}, Lg/cpk;-><init>()V

    new-instance v1, Lg/gwu;

    invoke-direct/range {v1 .. v6}, Lg/gwu;-><init>(IILjava/lang/String;J)V

    iput-object v1, v0, Lg/fqd;->b:Lg/gwu;

    sput-object v0, Lg/nt;->a:Lg/nt;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
