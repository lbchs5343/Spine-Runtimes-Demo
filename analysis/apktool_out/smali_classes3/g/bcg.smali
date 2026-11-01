.class public final Lg/bcg;
.super Lg/fyg;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ug;

.field public final synthetic b:I

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/ug;IJ)V
    .locals 0

    iput-object p2, p0, Lg/bcg;->a:Lg/ug;

    iput p3, p0, Lg/bcg;->b:I

    iput-wide p4, p0, Lg/bcg;->d:J

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 5

    iget-object v0, p0, Lg/bcg;->a:Lg/ug;

    :try_start_0
    iget-object v1, v0, Lg/ug;->w:Lg/djf;

    iget v2, p0, Lg/bcg;->b:I

    iget-wide v3, p0, Lg/bcg;->d:J

    invoke-virtual {v1, v2, v3, v4}, Lg/djf;->n(IJ)V
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
