.class public final Lg/ehs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final c:Lg/dio;

.field public final d:Lg/fnq;

.field public final e:Lg/dwm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg/dio;Lg/fnq;Lg/dwm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ehs;->c:Lg/dio;

    iput-object p2, p0, Lg/ehs;->d:Lg/fnq;

    iput-object p3, p0, Lg/ehs;->e:Lg/dwm;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/ehs;->b:Ljava/util/HashMap;

    return-void
.end method
