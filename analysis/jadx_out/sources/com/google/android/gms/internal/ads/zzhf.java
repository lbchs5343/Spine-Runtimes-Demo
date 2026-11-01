package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* loaded from: classes3.dex */
public final class zzhf extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public DatagramSocket f8711a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8712b;

    /* renamed from: c, reason: collision with root package name */
    public int f8713c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f8714d;

    /* renamed from: e, reason: collision with root package name */
    public final DatagramPacket f8715e;

    /* renamed from: f, reason: collision with root package name */
    public MulticastSocket f8716f;

    /* renamed from: g, reason: collision with root package name */
    public InetAddress f8717g;
    public Uri h;

    public zzhf() {
        throw null;
    }

    public zzhf(int i) {
        super(true);
        byte[] bArr = new byte[ZeusPluginEventCallback.EVENT_START_LOAD];
        this.f8714d = bArr;
        this.f8715e = new DatagramPacket(bArr, 0, ZeusPluginEventCallback.EVENT_START_LOAD);
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws zzhe {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f8713c;
        DatagramPacket datagramPacket = this.f8715e;
        if (i3 == 0) {
            try {
                DatagramSocket datagramSocket = this.f8711a;
                if (datagramSocket == null) {
                    throw null;
                }
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.f8713c = length;
                zzg(length);
            } catch (SocketTimeoutException e2) {
                throw new zzhe(e2, 2002);
            } catch (IOException e3) {
                throw new zzhe(e3, 2001);
            }
        }
        int length2 = datagramPacket.getLength();
        int i4 = this.f8713c;
        int min = Math.min(i4, i2);
        System.arraycopy(this.f8714d, length2 - i4, bArr, i, min);
        this.f8713c -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws zzhe {
        Uri uri = zzgiVar.zza;
        this.h = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.h.getPort();
        x(zzgiVar);
        try {
            this.f8717g = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f8717g, port);
            if (this.f8717g.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f8716f = multicastSocket;
                multicastSocket.joinGroup(this.f8717g);
                this.f8711a = this.f8716f;
            } else {
                this.f8711a = new DatagramSocket(inetSocketAddress);
            }
            this.f8711a.setSoTimeout(AVMDLDataLoader.KeyIsLiveSetLoaderType);
            this.f8712b = true;
            y(zzgiVar);
            return -1L;
        } catch (IOException e2) {
            throw new zzhe(e2, 2001);
        } catch (SecurityException e3) {
            throw new zzhe(e3, 2006);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() {
        InetAddress inetAddress;
        this.h = null;
        MulticastSocket multicastSocket = this.f8716f;
        if (multicastSocket != null) {
            try {
                inetAddress = this.f8717g;
            } catch (IOException unused) {
            }
            if (inetAddress == null) {
                throw null;
            }
            multicastSocket.leaveGroup(inetAddress);
            this.f8716f = null;
        }
        DatagramSocket datagramSocket = this.f8711a;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f8711a = null;
        }
        this.f8717g = null;
        this.f8713c = 0;
        if (this.f8712b) {
            this.f8712b = false;
            w();
        }
    }
}
