.class public final Lg/bfr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cng;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bfr;->b:Ljava/lang/String;

    iput-object p2, p0, Lg/bfr;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lg/bfr;->a:Z

    return-void
.end method
