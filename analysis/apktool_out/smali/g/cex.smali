.class public final synthetic Lg/cex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field public final synthetic a:Lg/dfj;


# direct methods
.method public synthetic constructor <init>(Lg/dfj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cex;->a:Lg/dfj;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/cex;->a:Lg/dfj;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
