package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes3.dex */
public final class zzga extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public FileInputStream f8241a;

    /* renamed from: b, reason: collision with root package name */
    public final ContentResolver f8242b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f8243c;

    /* renamed from: d, reason: collision with root package name */
    public long f8244d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8245e;

    /* renamed from: f, reason: collision with root package name */
    public AssetFileDescriptor f8246f;

    public zzga(Context context) {
        super(false);
        this.f8242b = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws zzfz {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f8244d;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new zzfz(e2, ZeusPluginEventCallback.EVENT_START_LOAD);
            }
        }
        FileInputStream fileInputStream = this.f8241a;
        int i3 = zzen.zza;
        int read = fileInputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f8244d;
        if (j2 != -1) {
            this.f8244d = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws zzfz {
        AssetFileDescriptor openAssetFileDescriptor;
        long j;
        try {
            try {
                Uri normalizeScheme = zzgiVar.zza.normalizeScheme();
                this.f8243c = normalizeScheme;
                x(zzgiVar);
                boolean equals = "content".equals(normalizeScheme.getScheme());
                ContentResolver contentResolver = this.f8242b;
                if (equals) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = contentResolver.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.f8246f = openAssetFileDescriptor;
                if (openAssetFileDescriptor == null) {
                    try {
                        throw new zzfz(new IOException("Could not open file descriptor for: ".concat(String.valueOf(normalizeScheme))), ZeusPluginEventCallback.EVENT_START_LOAD);
                    } catch (IOException e2) {
                        e = e2;
                        throw new zzfz(e, true != (e instanceof FileNotFoundException) ? ZeusPluginEventCallback.EVENT_START_LOAD : 2005);
                    }
                }
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f8241a = fileInputStream;
                if (length != -1 && zzgiVar.zze > length) {
                    throw new zzfz(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(zzgiVar.zze + startOffset) - startOffset;
                if (skip != zzgiVar.zze) {
                    throw new zzfz(null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.f8244d = -1L;
                        j = -1;
                    } else {
                        j = size - channel.position();
                        this.f8244d = j;
                        if (j < 0) {
                            throw new zzfz(null, 2008);
                        }
                    }
                } else {
                    j = length - skip;
                    this.f8244d = j;
                    if (j < 0) {
                        throw new zzfz(null, 2008);
                    }
                }
                long j2 = zzgiVar.zzf;
                if (j2 != -1) {
                    if (j != -1) {
                        j2 = Math.min(j, j2);
                    }
                    this.f8244d = j2;
                }
                this.f8245e = true;
                y(zzgiVar);
                long j3 = zzgiVar.zzf;
                return j3 != -1 ? j3 : this.f8244d;
            } catch (zzfz e3) {
                throw e3;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f8243c;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws zzfz {
        this.f8243c = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream = this.f8241a;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    this.f8241a = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f8246f;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f8246f = null;
                        if (this.f8245e) {
                            this.f8245e = false;
                            w();
                        }
                    } catch (IOException e2) {
                        throw new zzfz(e2, ZeusPluginEventCallback.EVENT_START_LOAD);
                    }
                } catch (IOException e3) {
                    throw new zzfz(e3, ZeusPluginEventCallback.EVENT_START_LOAD);
                }
            } catch (Throwable th) {
                this.f8241a = null;
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f8246f;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f8246f = null;
                    if (this.f8245e) {
                        this.f8245e = false;
                        w();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new zzfz(e4, ZeusPluginEventCallback.EVENT_START_LOAD);
                }
            }
        } catch (Throwable th2) {
            this.f8246f = null;
            if (this.f8245e) {
                this.f8245e = false;
                w();
            }
            throw th2;
        }
    }
}
