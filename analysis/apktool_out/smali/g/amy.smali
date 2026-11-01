.class public abstract Lg/amy;
.super Lg/cms;
.source "SourceFile"


# instance fields
.field public d:Lg/dbv;

.field public e:Lg/amy;

.field public f:Ljava/lang/CharSequence;

.field public g:Lg/ebw;

.field public h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/HashSet;

.field public k:Landroid/widget/ImageView;

.field public l:Ljava/lang/String;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public final n:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/ub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/amy;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/amy;->j:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/amy;->n:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/amy;->h:Z

    return-void
.end method


# virtual methods
.method public final getToolBarClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lg/get;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final getToolBarLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 2

    new-instance v0, Lg/hcs;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/hcs;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final o(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lg/amy;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const v4, 0x7f1200a1

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lg/amy;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v3, 0x7f08010a

    goto :goto_1

    :cond_2
    const v3, 0x7f0800ec

    :goto_1
    invoke-virtual {p1, v2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    if-eqz v0, :cond_3

    const v0, 0x7f1200a3

    goto :goto_2

    :cond_3
    const v0, 0x7f1200a5

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    new-instance v3, Lg/hej;

    const/16 v7, 0x1e

    const/4 v8, 0x2

    const v4, 0x7f090339

    const-class v5, Ljava/lang/CharSequence;

    const/16 v6, 0x40

    invoke-direct/range {v3 .. v8}, Lg/hej;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v3, p1, v0}, Lg/bwp;->f(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lg/aww;

    invoke-direct {v0, p0, v1, p2}, Lg/aww;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lg/amy;->e:Lg/amy;

    if-eqz p1, :cond_0

    const-string v0, "app_info_collapsed_sections"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/amy;->n:Ljava/util/HashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "show_ad_banner"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/amy;->h:Z

    :cond_1
    const p1, 0x7f090198

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lg/get;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090196

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lg/amy;->k:Landroid/widget/ImageView;

    const p1, 0x7f0901b4

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object p1, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lg/ewd;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lg/had;

    invoke-direct {v1, v0, p0}, Lg/had;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lg/doi;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "package_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lg/amy;->l:Ljava/lang/String;

    new-instance v4, Lg/gtb;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lg/gtb;-><init>(I)V

    iput-object p0, v4, Lg/gtb;->d:Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const p1, 0x7f1200d5

    iget-object v0, p0, Lg/amy;->e:Lg/amy;

    invoke-static {v0, p1}, Lg/gm;->c(Landroid/content/Context;I)V

    goto/16 :goto_10

    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_4

    const/high16 v5, 0x8000000

    goto :goto_1

    :cond_4
    const/16 v5, 0x40

    :goto_1
    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v6

    or-int/lit16 v7, v5, 0x100f

    invoke-virtual {v6, v7, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_6

    const p1, 0x7f1200d3

    iget-object v0, p0, Lg/amy;->e:Lg/amy;

    invoke-static {v0, p1}, Lg/gm;->c(Landroid/content/Context;I)V

    goto/16 :goto_10

    :cond_5
    move v5, v7

    :cond_6
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_7

    const p1, 0x7f12009c

    iget-object v0, p0, Lg/amy;->e:Lg/amy;

    invoke-static {v0, p1}, Lg/gm;->c(Landroid/content/Context;I)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    const-string v0, "ApplicationInfo is null"

    invoke-static {v0, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_7
    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v8

    iget-object v8, v8, Lg/haz;->x:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lg/amy;->f:Ljava/lang/CharSequence;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v0

    const v8, 0x7f1200b0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v8

    iget-object v8, v8, Lg/haz;->x:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lg/amy;->k:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lg/gtb;->b:Ljava/lang/Object;

    new-instance v9, Lg/dpj;

    const v10, 0x7f1200a7

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lg/ce;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p1, v6, v7}, Lg/gtb;->j(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    and-int/lit16 v7, v5, 0x1000

    if-nez v7, :cond_8

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v7, v8, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    goto :goto_3

    :cond_8
    move-object v7, v6

    :goto_3
    if-eqz v7, :cond_9

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v7, v1

    :goto_4
    iget-object v8, v4, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Lg/edn;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Lg/dpj;

    const v10, 0x7f1200a9

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v7, :cond_a

    const/4 v11, 0x0

    goto :goto_5

    :cond_a
    array-length v11, v7

    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v10, v13, v0

    aput-object v11, v13, v3

    const v10, 0x7f1200a4

    invoke-virtual {p0, v10, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lg/ce;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    array-length v8, v7

    :goto_6
    if-ge v0, v8, :cond_c

    aget-object v9, v7, v0

    if-eqz v9, :cond_b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, v4, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    new-instance v11, Lg/ce;

    invoke-direct {v11, v9}, Lg/ce;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    invoke-static {p1}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_e

    :cond_d
    and-int/lit8 v0, v5, 0x1

    const-string v7, "ActivityInfo"

    if-nez v0, :cond_10

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {p0, p1}, Lg/gtb;->f(Lg/amy;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v0, v4, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v7, Lg/edn;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v7, Lg/dpj;

    const v8, 0x7f1200a2

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lg/ce;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v7, Lg/ce;

    const v8, 0x7f120098

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lg/ce;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "package: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", system: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", model: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lg/erl;->q:Lg/cfg;

    if-eqz v7, :cond_11

    new-instance v7, La/u/e/TUE;

    const-string v8, "Activities exceed binder limit"

    invoke-direct {v7, v8, v0}, La/u/e/TUE;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_e
    if-eqz v0, :cond_f

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_7

    :cond_f
    move-object v0, v1

    :goto_7
    invoke-virtual {v4, v7, v0}, Lg/gtb;->k(Ljava/lang/String;[Landroid/content/pm/ComponentInfo;)V

    goto :goto_8

    :cond_10
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v7, v0}, Lg/gtb;->k(Ljava/lang/String;[Landroid/content/pm/ComponentInfo;)V

    :cond_11
    :goto_8
    and-int/lit8 v0, v5, 0x4

    if-nez v0, :cond_12

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_9

    :cond_12
    move-object v0, v6

    :goto_9
    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_a

    :cond_13
    move-object v0, v1

    :goto_a
    const-string v2, "ServiceInfo"

    invoke-virtual {v4, v2, v0}, Lg/gtb;->k(Ljava/lang/String;[Landroid/content/pm/ComponentInfo;)V

    and-int/lit8 v0, v5, 0x2

    if-nez v0, :cond_14

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v0

    invoke-virtual {v0, v12, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_b

    :cond_14
    move-object v0, v6

    :goto_b
    if-eqz v0, :cond_15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_c

    :cond_15
    move-object v0, v1

    :goto_c
    const-string v2, "ReceiverInfo"

    invoke-virtual {v4, v2, v0}, Lg/gtb;->k(Ljava/lang/String;[Landroid/content/pm/ComponentInfo;)V

    const/16 v0, 0x8

    and-int/lit8 v2, v5, 0x8

    if-nez v2, :cond_16

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    :cond_16
    if-eqz v6, :cond_17

    iget-object p1, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_d

    :cond_17
    move-object p1, v1

    :goto_d
    const-string v0, "ProviderInfo"

    invoke-virtual {v4, v0, p1}, Lg/gtb;->k(Ljava/lang/String;[Landroid/content/pm/ComponentInfo;)V

    :goto_e
    iget-object p1, v4, Lg/gtb;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lg/amy;->g:Lg/ebw;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lg/ebw;->i()V

    :cond_18
    iget-object v0, p0, Lg/amy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lg/amy;->j:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cng;

    instance-of v4, v2, Lg/dpj;

    if-eqz v4, :cond_1a

    check-cast v2, Lg/dpj;

    iget-object v1, v2, Lg/ce;->a:Ljava/lang/String;

    goto :goto_f

    :cond_1a
    instance-of v2, v2, Lg/brq;

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    iget-object p1, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lg/dbv;

    invoke-virtual {p0}, Lg/amy;->p()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lg/amy;->d:Lg/dbv;

    new-instance v1, Lg/ciz;

    invoke-direct {v1, p1}, Lg/ciz;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c005f

    iput v2, v1, Lg/ciz;->f:I

    const-class v4, Lg/th;

    invoke-virtual {v0, v4, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lg/amy;->d:Lg/dbv;

    new-instance v1, Lg/dx;

    invoke-direct {v1, p1}, Lg/ciz;-><init>(Landroid/content/Context;)V

    iput v2, v1, Lg/ciz;->f:I

    const-class v2, Lg/ce;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lg/amy;->d:Lg/dbv;

    new-instance v1, Lg/has;

    invoke-direct {v1}, Lg/has;-><init>()V

    const v2, 0x7f0c005e

    iput v2, v1, Lg/has;->c:I

    const-class v2, Lg/edn;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lg/amy;->d:Lg/dbv;

    new-instance v1, Lg/dxl;

    invoke-direct {v1}, Lg/dxl;-><init>()V

    iput-object p1, v1, Lg/dxl;->e:Landroid/content/Context;

    const v2, 0x7f0c005d

    iput v2, v1, Lg/dxl;->d:I

    const-class v2, Lg/brq;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lg/amy;->d:Lg/dbv;

    new-instance v1, Lg/dxl;

    invoke-direct {v1, p0, p1}, Lg/dxl;-><init>(Lg/amy;Landroid/content/Context;)V

    const v2, 0x7f0c005c

    iput v2, v1, Lg/dxl;->d:I

    const-class v2, Lg/dpj;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lg/amy;->d:Lg/dbv;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    iget-object v0, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lg/clm;

    invoke-direct {v1, p1}, Lg/clm;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lg/fji;)V

    :cond_1c
    new-instance p1, Lg/ebw;

    iget-object v0, p0, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090296

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lg/amy;->d:Lg/dbv;

    iget-object v2, v2, Lg/dbv;->c:Ljava/util/ArrayList;

    new-instance v4, Lg/aoi;

    invoke-direct {v4, v3, p0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1, v2, v4}, Lg/ebw;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Ljava/util/ArrayList;Lg/aoi;)V

    iput-object p1, p0, Lg/amy;->g:Lg/ebw;

    :goto_10
    iget-boolean p1, p0, Lg/amy;->h:Z

    if-eqz p1, :cond_1e

    move-object p1, p0

    check-cast p1, Lb/a/a;

    iget-object v0, p1, Lg/amy;->e:Lg/amy;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lg/amy;->e:Lg/amy;

    invoke-static {p1}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const v1, 0x7f12006a

    goto :goto_11

    :cond_1d
    const v1, 0x7f12006b

    :goto_11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lg/cms;->bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lg/cms;->bannerAdShow()Z

    :cond_1e
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lg/amy;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09035e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lg/amy;->l:Ljava/lang/String;

    invoke-static {v1}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lg/amy;->g:Lg/ebw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ebw;->i()V

    :cond_0
    invoke-super {p0}, Lg/cms;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v0, p0, Lg/dms;->clickInterval:Lg/fei;

    invoke-virtual {v0}, Lg/fei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09035e

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/amy;->e:Lg/amy;

    iget-object v1, p0, Lg/amy;->l:Ljava/lang/String;

    iget-object v2, p0, Lg/amy;->f:Ljava/lang/CharSequence;

    invoke-static {v2}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x7f1202d1

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lb/a/c;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "PACKAGE_NAME"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "APP_NAME"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    const v1, 0x7f090010

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lg/amy;->e:Lg/amy;

    iget-object v1, p0, Lg/amy;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/eyt;->bv(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/amy;->n:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "app_info_collapsed_sections"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final p()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/amy;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cng;

    instance-of v4, v3, Lg/dpj;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lg/dpj;

    iget-object v2, v2, Lg/ce;->a:Ljava/lang/String;

    iget-object v4, p0, Lg/amy;->n:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    instance-of v4, v3, Lg/edn;

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
