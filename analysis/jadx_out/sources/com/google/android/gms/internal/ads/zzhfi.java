package com.google.android.gms.internal.ads;

import g.epe;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public class zzhfi implements Iterator, Closeable, zzard {

    /* renamed from: b, reason: collision with root package name */
    public static final epe f8719b = new epe("eof ");

    /* renamed from: f, reason: collision with root package name */
    public zzaqz f8723f;

    /* renamed from: g, reason: collision with root package name */
    public zzhfj f8724g;

    /* renamed from: c, reason: collision with root package name */
    public zzarc f8720c = null;

    /* renamed from: d, reason: collision with root package name */
    public long f8721d = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f8722e = 0;
    public final ArrayList h = new ArrayList();

    static {
        zzhfp.zzb(zzhfi.class);
    }

    public void close() throws IOException {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzarc zzarcVar = this.f8720c;
        epe epeVar = f8719b;
        if (zzarcVar == epeVar) {
            return false;
        }
        if (zzarcVar != null) {
            return true;
        }
        try {
            this.f8720c = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.f8720c = epeVar;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        int i = 0;
        while (true) {
            ArrayList arrayList = this.h;
            if (i >= arrayList.size()) {
                sb.append("]");
                return sb.toString();
            }
            if (i > 0) {
                sb.append(";");
            }
            sb.append(((zzarc) arrayList.get(i)).toString());
            i++;
        }
    }

    @Override // java.util.Iterator
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzarc next() {
        zzarc zzb;
        zzarc zzarcVar = this.f8720c;
        if (zzarcVar != null && zzarcVar != f8719b) {
            this.f8720c = null;
            return zzarcVar;
        }
        zzhfj zzhfjVar = this.f8724g;
        if (zzhfjVar == null || this.f8721d >= this.f8722e) {
            this.f8720c = f8719b;
            throw new NoSuchElementException();
        }
        try {
            synchronized (zzhfjVar) {
                this.f8724g.zze(this.f8721d);
                zzb = this.f8723f.zzb(this.f8724g, this);
                this.f8721d = this.f8724g.zzb();
            }
            return zzb;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    public final List zzd() {
        zzhfj zzhfjVar = this.f8724g;
        ArrayList arrayList = this.h;
        return (zzhfjVar == null || this.f8720c == f8719b) ? arrayList : new zzhfo(arrayList, this);
    }

    public final void zze(zzhfj zzhfjVar, long j, zzaqz zzaqzVar) throws IOException {
        this.f8724g = zzhfjVar;
        this.f8721d = zzhfjVar.zzb();
        zzhfjVar.zze(zzhfjVar.zzb() + j);
        this.f8722e = zzhfjVar.zzb();
        this.f8723f = zzaqzVar;
    }
}
