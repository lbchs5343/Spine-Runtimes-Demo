package com.google.android.gms.internal.ads;

import g.azk;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class zzft {

    /* renamed from: c, reason: collision with root package name */
    public final zzfr f8194c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicLong f8195d = new AtomicLong();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f8196e = new ArrayDeque();

    /* renamed from: a, reason: collision with root package name */
    public final PriorityQueue f8192a = new PriorityQueue();

    /* renamed from: b, reason: collision with root package name */
    public int f8193b = -1;

    public zzft(zzfr zzfrVar) {
        this.f8194c = zzfrVar;
    }

    public final void f(int i) {
        while (true) {
            PriorityQueue priorityQueue = this.f8192a;
            if (priorityQueue.size() <= i) {
                return;
            }
            azk azkVar = (azk) priorityQueue.poll();
            int i2 = zzen.zza;
            this.f8194c.zza(azkVar.f11115c, azkVar.f11114b);
            this.f8196e.push(azkVar);
        }
    }

    public final int zza() {
        return this.f8193b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
    
        if (r11 < r0.f11115c) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(long j, zzed zzedVar) {
        int i = this.f8193b;
        if (i != 0) {
            PriorityQueue priorityQueue = this.f8192a;
            if (i != -1 && priorityQueue.size() >= this.f8193b) {
                azk azkVar = (azk) priorityQueue.peek();
                int i2 = zzen.zza;
            }
            ArrayDeque arrayDeque = this.f8196e;
            azk azkVar2 = arrayDeque.isEmpty() ? new azk() : (azk) arrayDeque.poll();
            long andIncrement = this.f8195d.getAndIncrement();
            zzed zzedVar2 = azkVar2.f11114b;
            zzdb.zzf(j != -9223372036854775807L);
            azkVar2.f11115c = j;
            azkVar2.f11113a = andIncrement;
            zzedVar2.zzI(zzedVar.zzb());
            System.arraycopy(zzedVar.zzN(), zzedVar.zzd(), zzedVar2.zzN(), 0, zzedVar.zzb());
            priorityQueue.add(azkVar2);
            int i3 = this.f8193b;
            if (i3 != -1) {
                f(i3);
                return;
            }
            return;
        }
        this.f8194c.zza(j, zzedVar);
    }

    public final void zzc() {
        f(0);
    }

    public final void zzd(int i) {
        zzdb.zzf(i >= 0);
        this.f8193b = i;
        f(i);
    }
}
