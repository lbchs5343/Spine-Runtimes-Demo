.class public final Lg/edu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/akx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/edu;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/edu;->b:Ljava/lang/String;

    iget-object p1, p2, Lg/akx;->afmaVersion:Ljava/lang/String;

    iput-object p1, p0, Lg/edu;->c:Ljava/lang/String;

    return-void
.end method
