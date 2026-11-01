package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;

/* loaded from: classes3.dex */
public final class zzbbh {

    /* renamed from: a, reason: collision with root package name */
    public zzbaw f4683a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4684b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4685c = new Object();

    public zzbbh(Context context) {
    }

    public static /* bridge */ /* synthetic */ void d(zzbbh zzbbhVar) {
        synchronized (zzbbhVar.f4685c) {
            try {
                zzbaw zzbawVar = zzbbhVar.f4683a;
                if (zzbawVar == null) {
                    return;
                }
                zzbawVar.disconnect();
                zzbbhVar.f4683a = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
