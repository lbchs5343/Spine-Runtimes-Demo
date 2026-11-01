package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import com.bytedance.pangle.ZeusPluginEventCallback;
import g.tn;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes3.dex */
public final class zzgs extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8619a;

    /* renamed from: b, reason: collision with root package name */
    public RandomAccessFile f8620b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f8621c;

    /* renamed from: d, reason: collision with root package name */
    public long f8622d;

    public zzgs() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws zzgr {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f8622d;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f8620b;
            int i3 = zzen.zza;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.f8622d -= read;
                zzg(read);
            }
            return read;
        } catch (IOException e2) {
            throw new zzgr(e2, ZeusPluginEventCallback.EVENT_START_LOAD);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws zzgr {
        Uri uri = zzgiVar.zza;
        this.f8621c = uri;
        x(zzgiVar);
        try {
            String path = uri.getPath();
            if (path == null) {
                throw null;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f8620b = randomAccessFile;
            try {
                randomAccessFile.seek(zzgiVar.zze);
                long j = zzgiVar.zzf;
                if (j == -1) {
                    j = this.f8620b.length() - zzgiVar.zze;
                }
                this.f8622d = j;
                if (j < 0) {
                    throw new zzgr(null, null, 2008);
                }
                this.f8619a = true;
                y(zzgiVar);
                return this.f8622d;
            } catch (IOException e2) {
                throw new zzgr(e2, ZeusPluginEventCallback.EVENT_START_LOAD);
            }
        } catch (FileNotFoundException e3) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new zzgr(e3, ((e3.getCause() instanceof ErrnoException) && ((ErrnoException) e3.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005);
            }
            String path2 = uri.getPath();
            String query = uri.getQuery();
            String fragment = uri.getFragment();
            StringBuilder o = tn.o("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=", path2, ",query=", query, ",fragment=");
            o.append(fragment);
            throw new zzgr(o.toString(), e3, 1004);
        } catch (SecurityException e4) {
            throw new zzgr(e4, 2006);
        } catch (RuntimeException e5) {
            throw new zzgr(e5, ZeusPluginEventCallback.EVENT_START_LOAD);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f8621c;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws zzgr {
        this.f8621c = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f8620b;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f8620b = null;
                if (this.f8619a) {
                    this.f8619a = false;
                    w();
                }
            } catch (IOException e2) {
                throw new zzgr(e2, ZeusPluginEventCallback.EVENT_START_LOAD);
            }
        } catch (Throwable th) {
            this.f8620b = null;
            if (this.f8619a) {
                this.f8619a = false;
                w();
            }
            throw th;
        }
    }
}
