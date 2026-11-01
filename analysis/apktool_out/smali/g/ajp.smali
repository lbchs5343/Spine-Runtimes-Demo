.class public final Lg/ajp;
.super Ljava/lang/Object;


# instance fields
.field public a:Lg/dmm;

.field public b:Lg/f;

.field public c:Lg/cbh;

.field public final d:Landroid/content/Context;

.field public e:Ljava/lang/Object;

.field public f:Lg/dsk;

.field public g:Lorg/json/JSONObject;

.field public h:Ljava/util/ArrayList;

.field public i:Lg/dlv;

.field public j:Lg/axs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ajp;->d:Landroid/content/Context;

    return-void
.end method

.method public static k(Lg/dlv;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lg/eyh;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lg/dlv;->dq(Lorg/json/JSONObject;)V

    check-cast p0, Lg/eyh;

    invoke-virtual {p0}, Lg/eyh;->d()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dlv;

    invoke-static {v0, p1}, Lg/ajp;->k(Lg/dlv;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lg/dlv;->dq(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final l(Lg/dlv;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lg/dlv;->bl()Lg/eyh;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/eyh;->dq()Lg/ewk;

    move-result-object v0

    invoke-virtual {p1}, Lg/dlv;->le()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lg/dlv;->le()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lg/ajp;->d:Landroid/content/Context;

    invoke-virtual {v0, v4, v2, v3}, Lg/ewk;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lg/ewk;->dq()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    instance-of v0, p1, Lg/eyh;

    if-eqz v0, :cond_4

    check-cast p1, Lg/eyh;

    invoke-virtual {p1}, Lg/eyh;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dlv;

    invoke-virtual {p0, v0}, Lg/ajp;->l(Lg/dlv;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final m(Lg/abm;Lg/dlv;)Lg/dlv;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p1, Lg/abm;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lg/abm;->e:Ljava/lang/String;

    sget-object v2, Lg/cco;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lg/ajp;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg/ajp;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Lg/ajp;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "View"

    iput-object v1, p1, Lg/abm;->e:Ljava/lang/String;

    sget-object v2, Lg/cco;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gap;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lg/ajp;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lg/gap;->dq(Landroid/content/Context;)Lg/dlv;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    return-object v0

    :cond_2
    iget-object v4, p1, Lg/abm;->f:Lorg/json/JSONObject;

    iget-object v5, p1, Lg/abm;->c:Ljava/lang/String;

    iget-object v6, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-static {v5, v6}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lg/dlv;->s(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lg/dlv;->iw(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lg/dlv;->d(Lorg/json/JSONObject;)V

    invoke-virtual {v2, p1}, Lg/dlv;->dq(Lg/abm;)V

    iget-object v1, p0, Lg/ajp;->j:Lg/axs;

    iget-boolean v1, v1, Lg/axs;->g:Z

    invoke-virtual {v2, v1}, Lg/dlv;->ox(Z)V

    iget-object v1, p0, Lg/ajp;->a:Lg/dmm;

    invoke-virtual {v2, v1}, Lg/dlv;->dq(Lg/dmm;)V

    iget-object v1, p0, Lg/ajp;->f:Lg/dsk;

    invoke-virtual {v2, v1}, Lg/dlv;->dq(Lg/dsk;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    instance-of v5, p2, Lg/eyh;

    if-eqz v5, :cond_3

    check-cast p2, Lg/eyh;

    invoke-virtual {p2}, Lg/eyh;->dq()Lg/ewk;

    move-result-object v0

    invoke-virtual {v2, p2}, Lg/dlv;->dq(Lg/eyh;)V

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-static {v5, v6}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3, p2, v5}, Lg/ewk;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lg/ewk;->dq()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    instance-of p2, v2, Lg/eyh;

    if-eqz p2, :cond_c

    iget-object p1, p1, Lg/abm;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lg/dlv;->op()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Swiper"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    const-string p2, "UGTemplateEngine"

    const-string v0, "Swiper must be only one widget"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/abm;

    invoke-virtual {p0, p2, v2}, Lg/ajp;->m(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lg/dlv;->by()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v2

    check-cast v0, Lg/eyh;

    invoke-virtual {p2}, Lg/dlv;->e()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lg/eyh;->dq(Lg/dlv;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {v2}, Lg/dlv;->op()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lg/ajp;->j:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->k()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/abm;

    invoke-virtual {p0, p2, v2}, Lg/ajp;->m(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lg/dlv;->ce()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v2

    check-cast v0, Lg/eyh;

    invoke-virtual {v0, p2}, Lg/eyh;->dq(Lg/dlv;)V

    goto :goto_4

    :cond_b
    return-object v2

    :cond_c
    iput-object v2, p0, Lg/ajp;->i:Lg/dlv;

    return-object v2

    :cond_d
    return-object v0
.end method

.method public final n(Lorg/json/JSONObject;)Lg/dlv;
    .locals 3

    new-instance v0, Lg/axs;

    iget-object v1, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lg/axs;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lg/ajp;->j:Lg/axs;

    iget-object p1, p0, Lg/ajp;->c:Lg/cbh;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lg/axs;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p1, Lg/cbh;->b:Ljava/lang/String;

    :cond_0
    iget-object p1, v0, Lg/axs;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lg/axs;->p(Lorg/json/JSONObject;)Lg/abm;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lg/ajp;->o(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lg/ajp;->i:Lg/dlv;

    return-object p1
.end method

.method public final o(Lg/abm;Lg/dlv;)Lg/dlv;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object v1, p1, Lg/abm;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_e

    iget-object v1, p1, Lg/abm;->e:Ljava/lang/String;

    sget-object v2, Lg/cco;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gap;

    if-nez v2, :cond_1

    iget-object p1, p0, Lg/ajp;->h:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/ajp;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p0, Lg/ajp;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    iget-object v3, p0, Lg/ajp;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lg/gap;->dq(Landroid/content/Context;)Lg/dlv;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    iget-object v4, p1, Lg/abm;->c:Ljava/lang/String;

    iget-object v5, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg/dlv;->s(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lg/dlv;->iw(Ljava/lang/String;)V

    iget-object v1, p1, Lg/abm;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lg/dlv;->d(Lorg/json/JSONObject;)V

    invoke-virtual {v2, p1}, Lg/dlv;->dq(Lg/abm;)V

    iget-object v1, p0, Lg/ajp;->a:Lg/dmm;

    invoke-virtual {v2, v1}, Lg/dlv;->dq(Lg/dmm;)V

    instance-of v1, p2, Lg/eyh;

    if-eqz v1, :cond_3

    check-cast p2, Lg/eyh;

    invoke-virtual {v2, p2}, Lg/dlv;->dq(Lg/eyh;)V

    invoke-virtual {p2}, Lg/eyh;->dq()Lg/ewk;

    move-result-object v0

    :cond_3
    iget-object p2, p1, Lg/abm;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lg/abm;->f:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3, v1, v4}, Lg/ewk;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of p2, v2, Lg/eyh;

    if-eqz p2, :cond_c

    iget-object p1, p1, Lg/abm;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lg/dlv;->op()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Swiper"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const-string p2, "UGTemplateEngine"

    const-string v1, "Swiper must be only one widget"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/abm;

    invoke-virtual {p0, p2, v2}, Lg/ajp;->o(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lg/dlv;->ce()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v2

    check-cast v1, Lg/eyh;

    invoke-virtual {v1, p2}, Lg/eyh;->dq(Lg/dlv;)V

    goto :goto_1

    :cond_9
    :goto_2
    invoke-virtual {v2}, Lg/dlv;->op()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lg/ajp;->j:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->k()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/abm;

    invoke-virtual {p0, p2, v2}, Lg/ajp;->o(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lg/dlv;->ce()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v2

    check-cast v0, Lg/eyh;

    invoke-virtual {v0, p2}, Lg/eyh;->dq(Lg/dlv;)V

    goto :goto_3

    :cond_b
    return-object v2

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lg/ewk;->dq()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iput-object v2, p0, Lg/ajp;->i:Lg/dlv;

    return-object v2

    :cond_e
    return-object v0
.end method

.method public final p(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lg/dlv;
    .locals 1

    iput-object p2, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    new-instance v0, Lg/axs;

    invoke-direct {v0, p1, p2, p3}, Lg/axs;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lg/ajp;->j:Lg/axs;

    new-instance p1, Lg/dsk;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Lg/dsk;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lg/ajp;->f:Lg/dsk;

    iget-object p1, p0, Lg/ajp;->c:Lg/cbh;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lg/ajp;->j:Lg/axs;

    iget-object p2, p2, Lg/axs;->f:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lg/cbh;->b:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lg/ajp;->j:Lg/axs;

    iget-object p2, p1, Lg/axs;->a:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lg/axs;->p(Lorg/json/JSONObject;)Lg/abm;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lg/ajp;->m(Lg/abm;Lg/dlv;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lg/ajp;->i:Lg/dlv;

    invoke-virtual {p0, p1}, Lg/ajp;->q(Lg/dlv;)V

    iget-object p1, p0, Lg/ajp;->i:Lg/dlv;

    return-object p1
.end method

.method public final q(Lg/dlv;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/dlv;->le()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lg/dlv;->bl()Lg/eyh;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/eyh;->dq()Lg/ewk;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lg/dlv;->ji()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lg/dlv;->h()Lg/abm;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lg/dlv;->h()Lg/abm;

    move-result-object v3

    iget-object v3, v3, Lg/abm;->a:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "i18n"

    invoke-virtual {p1}, Lg/dlv;->h()Lg/abm;

    move-result-object v5

    iget-object v5, v5, Lg/abm;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    const-string v5, "xNode"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    iget-object v5, p0, Lg/ajp;->d:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4}, Lg/ewk;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lg/ajp;->b:Lg/f;

    invoke-virtual {p1, v0}, Lg/dlv;->dq(Lg/f;)V

    iget-object v0, p0, Lg/ajp;->c:Lg/cbh;

    invoke-virtual {p1, v0}, Lg/dlv;->dq(Lg/cyx;)V

    iget-object v0, p0, Lg/ajp;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lg/dlv;->dq(Lg/ahr;)V

    instance-of v0, p1, Lg/eyh;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lg/eyh;

    invoke-virtual {v0}, Lg/eyh;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dlv;

    invoke-virtual {p0, v1}, Lg/ajp;->q(Lg/dlv;)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lg/ewk;->dq()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p1}, Lg/dlv;->p()V

    return-void
.end method

.method public final r(Lorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lg/ajp;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lg/ajp;->i:Lg/dlv;

    invoke-static {v0, p1}, Lg/ajp;->k(Lg/dlv;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lg/ajp;->i:Lg/dlv;

    invoke-virtual {p0, p1}, Lg/ajp;->q(Lg/dlv;)V

    return-void
.end method

.method public final s(Lg/cyx;)V
    .locals 1

    new-instance v0, Lg/cbh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lg/cbh;->a:Lg/cyx;

    iget-object p1, p0, Lg/ajp;->j:Lg/axs;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/axs;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lg/cbh;->b:Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lg/ajp;->c:Lg/cbh;

    return-void
.end method
