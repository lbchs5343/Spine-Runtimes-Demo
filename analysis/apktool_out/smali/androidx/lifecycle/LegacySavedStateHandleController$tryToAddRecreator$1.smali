.class public final Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# instance fields
.field public final synthetic a:Lg/euu;

.field public final synthetic c:Lg/hbu;


# direct methods
.method public constructor <init>(Lg/euu;Lg/hbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;->a:Lg/euu;

    iput-object p2, p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;->c:Lg/hbu;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 0

    sget-object p1, Lg/dtn;->ON_START:Lg/dtn;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;->a:Lg/euu;

    invoke-virtual {p1, p0}, Lg/euu;->n(Lg/esc;)V

    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;->c:Lg/hbu;

    invoke-virtual {p1}, Lg/hbu;->g()V

    :cond_0
    return-void
.end method
