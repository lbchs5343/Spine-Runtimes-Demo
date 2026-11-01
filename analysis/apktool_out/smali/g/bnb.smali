.class public final Lg/bnb;
.super Lg/dpc;


# instance fields
.field public final synthetic a:Lg/akg;


# direct methods
.method public constructor <init>(Lg/akg;Lg/gkb;)V
    .locals 0

    iput-object p1, p0, Lg/bnb;->a:Lg/akg;

    invoke-direct {p0, p2}, Lg/dpc;-><init>(Lg/gkb;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bnb;->a:Lg/akg;

    iget-object v0, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
