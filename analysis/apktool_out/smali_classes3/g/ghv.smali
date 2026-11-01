.class public final Lg/ghv;
.super Lg/fyg;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ug;

.field public final synthetic b:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/ug;II)V
    .locals 0

    iput-object p2, p0, Lg/ghv;->a:Lg/ug;

    iput p3, p0, Lg/ghv;->b:I

    iput p4, p0, Lg/ghv;->d:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 5

    iget-object v0, p0, Lg/ghv;->a:Lg/ug;

    iget v1, p0, Lg/ghv;->b:I

    iget v2, p0, Lg/ghv;->d:I

    :try_start_0
    iget-object v3, v0, Lg/ug;->w:Lg/djf;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lg/djf;->o(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lg/ug;->ah(Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
