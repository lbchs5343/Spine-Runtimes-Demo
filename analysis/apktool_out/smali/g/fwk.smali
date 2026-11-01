.class public final Lg/fwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# static fields
.field public static b:Lg/fwk;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/fwk;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 0

    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lg/fwk;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lg/bys;->d(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
