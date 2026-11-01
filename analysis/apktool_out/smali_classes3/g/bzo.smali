.class public final synthetic Lg/bzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lg/esy;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/esy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bzo;->a:Lg/esy;

    iput-object p2, p0, Lg/bzo;->b:Landroid/content/Context;

    iput-object p3, p0, Lg/bzo;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lg/bzo;->a:Lg/esy;

    iget-object p1, p1, Lg/esy;->k:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p2, p0, Lg/bzo;->b:Landroid/content/Context;

    iget-object v0, p0, Lg/bzo;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lg/afo;->ae(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
