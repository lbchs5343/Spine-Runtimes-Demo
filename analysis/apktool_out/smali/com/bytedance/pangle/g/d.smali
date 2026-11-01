.class public final Lcom/bytedance/pangle/g/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bytedance/pangle/g/o;
    .locals 12

    const-string v0, "Failed to collect certificates from "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v3, 0x7109871a

    const v4, -0xfac9740

    const/4 v5, 0x4

    :try_start_1
    filled-new-array {v4, v3}, [I

    move-result-object v6

    invoke-static {p0, v2, v6}, Lcom/bytedance/pangle/g/f;->a(Ljava/lang/String;Ljava/io/RandomAccessFile;[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v6, Lcom/bytedance/pangle/g/f;->a:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/pangle/g/m;

    if-eqz v4, :cond_2

    invoke-static {v2, v4}, Lcom/bytedance/pangle/g/c;->a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/g/m;)Lcom/bytedance/pangle/g/c$c;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [[Ljava/security/cert/Certificate;

    iget-object v7, v4, Lcom/bytedance/pangle/g/c$c;->a:[Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/bytedance/pangle/g/d;->a([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    iget-object v7, v4, Lcom/bytedance/pangle/g/c$c;->b:Lcom/bytedance/pangle/g/c$b;

    if-eqz v7, :cond_1

    iget-object v1, v7, Lcom/bytedance/pangle/g/c$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Landroid/content/pm/Signature;

    iget-object v9, v4, Lcom/bytedance/pangle/g/c$c;->b:Lcom/bytedance/pangle/g/c$b;

    iget-object v9, v9, Lcom/bytedance/pangle/g/c$b;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [I

    :goto_0
    if-ge v8, v1, :cond_0

    new-instance v10, Landroid/content/pm/Signature;

    iget-object v11, v4, Lcom/bytedance/pangle/g/c$c;->b:Lcom/bytedance/pangle/g/c$b;

    iget-object v11, v11, Lcom/bytedance/pangle/g/c$b;->a:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v10, v7, v8

    iget-object v10, v4, Lcom/bytedance/pangle/g/c$c;->b:Lcom/bytedance/pangle/g/c$b;

    iget-object v10, v10, Lcom/bytedance/pangle/g/c$b;->b:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v1, v7

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    new-instance v4, Lcom/bytedance/pangle/g/o;

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v1, v9}, Lcom/bytedance/pangle/g/o;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;[I)V
    :try_end_2
    .catch Lcom/bytedance/pangle/g/n; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v4

    :cond_2
    :try_start_4
    new-instance v1, Lcom/bytedance/pangle/g/n;

    const-string v4, "findVerifiedSigner, No APK Signature Scheme v3 signature in package"

    invoke-direct {v1, v4}, Lcom/bytedance/pangle/g/n;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Lcom/bytedance/pangle/g/n; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    new-instance v3, Lcom/bytedance/pangle/g/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using APK Signature Scheme v3"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v5, p0, v1}, Lcom/bytedance/pangle/g/q;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :try_start_6
    sget-object v1, Lcom/bytedance/pangle/g/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/pangle/g/m;

    if-eqz v1, :cond_3

    invoke-static {v2, v1}, Lcom/bytedance/pangle/g/b;->a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/g/m;)Lcom/bytedance/pangle/g/b$a;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/pangle/g/b$a;->a:[[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/bytedance/pangle/g/d;->a([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v1

    new-instance v3, Lcom/bytedance/pangle/g/o;

    invoke-direct {v3, v1}, Lcom/bytedance/pangle/g/o;-><init>([Landroid/content/pm/Signature;)V
    :try_end_6
    .catch Lcom/bytedance/pangle/g/n; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v3

    :catch_4
    move-exception v1

    goto :goto_3

    :cond_3
    :try_start_8
    new-instance v1, Lcom/bytedance/pangle/g/n;

    const-string v3, "findVerifiedSigner, No APK Signature Scheme v2 signature in package"

    invoke-direct {v1, v3}, Lcom/bytedance/pangle/g/n;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Lcom/bytedance/pangle/g/n; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    new-instance v3, Lcom/bytedance/pangle/g/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using APK Signature Scheme v2"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v5, p0, v1}, Lcom/bytedance/pangle/g/q;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    invoke-static {p0}, Lcom/bytedance/pangle/g/a;->a(Ljava/lang/String;)Lcom/bytedance/pangle/g/o;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    return-object p0

    :catch_7
    move-exception v1

    :try_start_b
    new-instance v3, Lcom/bytedance/pangle/g/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " when findSignatureInfo at once"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v5, p0, v1}, Lcom/bytedance/pangle/g/q;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_8
    :try_start_c
    new-instance v0, Lcom/bytedance/pangle/g/q;

    const-string v2, "failed to read apk file, minSignatureSchemeVersion : 1, apkPath : "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    invoke-direct {v0, v2, p0}, Lcom/bytedance/pangle/g/q;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_4
    if-eqz v1, :cond_4

    :try_start_d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :catch_9
    :cond_4
    throw p0
.end method

.method public static a([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 6

    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/security/cert/Certificate;

    aput-object v5, v4, v1

    const-class v5, Landroid/content/pm/Signature;

    invoke-static {v5, v4}, Lcom/bytedance/pangle/b/b/a;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    aget-object v5, p0, v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_1
    new-instance v3, Landroid/content/pm/Signature;

    aget-object v4, p0, v2

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v3, v0, v2

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
