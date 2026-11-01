package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.pangle.ZeusPluginEventCallback;
import g.awf;
import g.tn;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzhb extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public FileInputStream f8693a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f8694b;

    /* renamed from: c, reason: collision with root package name */
    public zzgi f8695c;

    /* renamed from: d, reason: collision with root package name */
    public long f8696d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8697e;

    /* renamed from: f, reason: collision with root package name */
    public AssetFileDescriptor f8698f;

    public zzhb(Context context) {
        super(false);
        this.f8694b = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws zzha {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f8696d;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e2) {
                    throw new zzha(null, e2, ZeusPluginEventCallback.EVENT_START_LOAD);
                }
            }
            FileInputStream fileInputStream = this.f8693a;
            int i3 = zzen.zza;
            int read = fileInputStream.read(bArr, i, i2);
            if (read != -1) {
                long j2 = this.f8696d;
                if (j2 != -1) {
                    this.f8696d = j2 - read;
                }
                zzg(read);
                return read;
            }
            if (this.f8696d != -1) {
                throw new zzha("End of stream reached having not read sufficient data.", new EOFException(), ZeusPluginEventCallback.EVENT_START_LOAD);
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws zzha {
        Resources resourcesForApplication;
        int parseInt;
        Resources resources;
        long j;
        this.f8695c = zzgiVar;
        x(zzgiVar);
        Uri normalizeScheme = zzgiVar.zza.normalizeScheme();
        boolean equals = TextUtils.equals("rawresource", normalizeScheme.getScheme());
        Context context = this.f8694b;
        if (equals) {
            resources = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                throw new zzha(awf.ac(pathSegments.size(), "rawresource:// URI must have exactly one path element, found "));
            }
            try {
                parseInt = Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new zzha("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
                throw new zzha(tn.ad("Unsupported URI scheme (", normalizeScheme.getScheme(), "). Only android.resource is supported."), null, 1004);
            }
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String packageName = TextUtils.isEmpty(normalizeScheme.getHost()) ? context.getPackageName() : normalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new zzha("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e2, 2005);
                }
            }
            if (path.matches("\\d+")) {
                try {
                    parseInt = Integer.parseInt(path);
                } catch (NumberFormatException unused2) {
                    throw new zzha("Resource identifier must be an integer.", null, 1004);
                }
            } else {
                parseInt = resourcesForApplication.getIdentifier(awf.i(packageName, ":", path), "raw", null);
                if (parseInt == 0) {
                    throw new zzha("Resource not found.", null, 2005);
                }
            }
            resources = resourcesForApplication;
        }
        try {
            AssetFileDescriptor openRawResourceFd = resources.openRawResourceFd(parseInt);
            if (openRawResourceFd == null) {
                throw new zzha("Resource is compressed: ".concat(String.valueOf(normalizeScheme)), null, ZeusPluginEventCallback.EVENT_START_LOAD);
            }
            this.f8698f = openRawResourceFd;
            long length = openRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(this.f8698f.getFileDescriptor());
            this.f8693a = fileInputStream;
            if (length != -1) {
                try {
                    if (zzgiVar.zze > length) {
                        throw new zzha(null, null, 2008);
                    }
                } catch (zzha e3) {
                    throw e3;
                } catch (IOException e4) {
                    throw new zzha(null, e4, ZeusPluginEventCallback.EVENT_START_LOAD);
                }
            }
            long startOffset = this.f8698f.getStartOffset();
            long skip = fileInputStream.skip(zzgiVar.zze + startOffset) - startOffset;
            if (skip != zzgiVar.zze) {
                throw new zzha(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.f8696d = -1L;
                    j = -1;
                } else {
                    j = channel.size() - channel.position();
                    this.f8696d = j;
                    if (j < 0) {
                        throw new zzha(null, null, 2008);
                    }
                }
            } else {
                j = length - skip;
                this.f8696d = j;
                if (j < 0) {
                    throw new zzge(2008);
                }
            }
            long j2 = zzgiVar.zzf;
            if (j2 != -1) {
                if (j != -1) {
                    j2 = Math.min(j, j2);
                }
                this.f8696d = j2;
            }
            this.f8697e = true;
            y(zzgiVar);
            long j3 = zzgiVar.zzf;
            return j3 != -1 ? j3 : this.f8696d;
        } catch (Resources.NotFoundException e5) {
            throw new zzha(null, e5, 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        zzgi zzgiVar = this.f8695c;
        if (zzgiVar != null) {
            return zzgiVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws zzha {
        this.f8695c = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream = this.f8693a;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    this.f8693a = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f8698f;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f8698f = null;
                        if (this.f8697e) {
                            this.f8697e = false;
                            w();
                        }
                    } catch (IOException e2) {
                        throw new zzha(null, e2, ZeusPluginEventCallback.EVENT_START_LOAD);
                    }
                } catch (IOException e3) {
                    throw new zzha(null, e3, ZeusPluginEventCallback.EVENT_START_LOAD);
                }
            } catch (Throwable th) {
                this.f8693a = null;
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f8698f;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f8698f = null;
                    if (this.f8697e) {
                        this.f8697e = false;
                        w();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new zzha(null, e4, ZeusPluginEventCallback.EVENT_START_LOAD);
                }
            }
        } catch (Throwable th2) {
            this.f8698f = null;
            if (this.f8697e) {
                this.f8697e = false;
                w();
            }
            throw th2;
        }
    }
}
