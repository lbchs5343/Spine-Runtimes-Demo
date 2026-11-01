.class public final Lg/duk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cci;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lg/cci;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/duk;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lg/duk;->a:Lg/cci;

    return-void
.end method
