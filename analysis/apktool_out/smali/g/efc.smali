.class public final Lg/efc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eoy;


# static fields
.field public static final a:Ljava/util/HashSet;


# instance fields
.field public b:Lg/fpd;

.field public c:Lg/cdy;

.field public d:Lg/tq;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lg/efc;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final f(Lg/ejd;Ljava/util/List;Ljava/lang/String;Lg/btp;)V
    .locals 9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget v1, p1, Lg/ejd;->a:I

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    :cond_1
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v4, "purchaseState"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "productIds"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "productId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lg/efc;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lg/efc;->c:Lg/cdy;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "p"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    if-eqz p4, :cond_5

    const/4 v1, 0x0

    invoke-interface {p4, v1}, Lg/btp;->i(Lg/x;)V

    :cond_5
    const-string v1, "acknowledged"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lg/efc;->d:Lg/tq;

    const-string v4, "token"

    const-string v6, "purchaseToken"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v4, Lg/czw;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lg/czw;->a:Ljava/lang/String;

    new-instance v3, Lg/ffr;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-direct {v3, v6, p0, v2, v7}, Lg/ffr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v4, v3}, Lg/tq;->aq(Lg/czw;Lg/dzt;)V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Purchase token must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    move v0, v1

    :cond_9
    if-nez v0, :cond_b

    if-nez p1, :cond_a

    const/16 p1, 0x4d8

    goto :goto_3

    :cond_a
    iget p1, p1, Lg/ejd;->a:I

    invoke-static {p1}, Lg/cdy;->j(I)I

    move-result p1

    :goto_3
    if-eqz p4, :cond_b

    invoke-interface {p4, p1}, Lg/btp;->o(I)V

    :cond_b
    :goto_4
    return-void
.end method
