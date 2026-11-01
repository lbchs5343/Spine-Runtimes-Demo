package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public abstract class zzcbw {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f5157a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicInteger f5158b = new AtomicInteger(0);

    public static int zzs() {
        return f5157a.get();
    }

    public static int zzu() {
        return f5158b.get();
    }

    public abstract long zzA();

    public abstract long zzB();

    public abstract Integer zzC();

    public abstract void zzF(Uri[] uriArr, String str);

    public abstract void zzG(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z);

    public abstract void zzH();

    public abstract void zzI(long j);

    public abstract void zzJ(int i);

    public abstract void zzK(int i);

    public abstract void zzL(zzcbv zzcbvVar);

    public abstract void zzM(int i);

    public abstract void zzN(int i);

    public abstract void zzO(boolean z);

    public abstract void zzP(Integer num);

    public abstract void zzQ(boolean z);

    public abstract void zzR(int i);

    public abstract void zzS(Surface surface, boolean z) throws IOException;

    public abstract void zzT(float f2, boolean z) throws IOException;

    public abstract void zzU();

    public abstract boolean zzV();

    public abstract int zzr();

    public abstract int zzt();

    public abstract long zzv();

    public abstract long zzw();

    public abstract long zzx();

    public abstract long zzy();

    public abstract long zzz();
}
