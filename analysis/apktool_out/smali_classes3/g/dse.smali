.class public final Lg/dse;
.super Lg/y;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/zq;


# direct methods
.method public constructor <init>(Lg/zq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dse;->a:Lg/zq;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Lg/dse;->a:Lg/zq;

    invoke-virtual {p1}, Lg/zq;->ag()Lg/bhb;

    move-result-object p1

    invoke-virtual {p1}, Lg/bhb;->l()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lg/dse;->a:Lg/zq;

    invoke-virtual {p1}, Lg/zq;->ag()Lg/bhb;

    move-result-object p1

    invoke-virtual {p1}, Lg/bhb;->af()V

    return-void
.end method
