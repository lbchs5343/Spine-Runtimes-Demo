.class public final Lg/atv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/atv;->b:Ljava/util/ArrayList;

    const/4 v0, 0x5

    iput v0, p0, Lg/atv;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/atv;->d:J

    iput-wide v0, p0, Lg/atv;->a:J

    return-void
.end method
