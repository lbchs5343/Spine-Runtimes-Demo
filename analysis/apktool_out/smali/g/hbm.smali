.class public abstract Lg/hbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ag:J

.field public ah:Lg/cyl;


# direct methods
.method public constructor <init>(JLg/cyl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg/hbm;->ag:J

    iput-object p3, p0, Lg/hbm;->ah:Lg/cyl;

    return-void
.end method
