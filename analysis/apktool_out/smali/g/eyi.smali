.class public final synthetic Lg/eyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lg/des;

.field public final synthetic b:Lg/bzm;


# direct methods
.method public synthetic constructor <init>(Lg/des;Lg/bzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eyi;->a:Lg/des;

    iput-object p2, p0, Lg/eyi;->b:Lg/bzm;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/eyi;->b:Lg/bzm;

    invoke-virtual {v0, p1}, Lg/bzm;->af(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lg/eyi;->a:Lg/des;

    iget-object v0, v0, Lg/des;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
