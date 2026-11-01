package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class zzfv extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public long f8208a;

    /* renamed from: b, reason: collision with root package name */
    public final AssetManager f8209b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f8210c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8211d;

    /* renamed from: e, reason: collision with root package name */
    public InputStream f8212e;

    public zzfv(Context context) {
        super(false);
        this.f8209b = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws zzfu {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f8208a;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new zzfu(e2, ZeusPluginEventCallback.EVENT_START_LOAD);
            }
        }
        InputStream inputStream = this.f8212e;
        int i3 = zzen.zza;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f8208a;
        if (j2 != -1) {
            this.f8208a = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws zzfu {
        try {
            Uri uri = zzgiVar.zza;
            this.f8210c = uri;
            String path = uri.getPath();
            if (path == null) {
                throw null;
            }
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            x(zzgiVar);
            InputStream open = this.f8209b.open(path, 1);
            this.f8212e = open;
            if (open.skip(zzgiVar.zze) < zzgiVar.zze) {
                throw new zzfu(null, 2008);
            }
            long j = zzgiVar.zzf;
            if (j != -1) {
                this.f8208a = j;
            } else {
                long available = this.f8212e.available();
                this.f8208a = available;
                if (available == 2147483647L) {
                    this.f8208a = -1L;
                }
            }
            this.f8211d = true;
            y(zzgiVar);
            return this.f8208a;
        } catch (zzfu e2) {
            throw e2;
        } catch (IOException e3) {
            throw new zzfu(e3, true != (e3 instanceof FileNotFoundException) ? ZeusPluginEventCallback.EVENT_START_LOAD : 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f8210c;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws zzfu {
        this.f8210c = null;
        try {
            try {
                InputStream inputStream = this.f8212e;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f8212e = null;
                if (this.f8211d) {
                    this.f8211d = false;
                    w();
                }
            } catch (IOException e2) {
                throw new zzfu(e2, ZeusPluginEventCallback.EVENT_START_LOAD);
            }
        } catch (Throwable th) {
            this.f8212e = null;
            if (this.f8211d) {
                this.f8211d = false;
                w();
            }
            throw th;
        }
    }
}
