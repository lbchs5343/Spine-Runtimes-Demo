package com.bytedance.pangle.util.b.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f1622a = new byte[2];

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f1623b = new byte[4];

    private static int a(byte[] bArr) {
        return ((bArr[1] & 255) << 8) | (bArr[0] & 255);
    }

    public static void a(byte[] bArr, int i) {
        bArr[1] = (byte) (i >>> 8);
        bArr[0] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    private static int b(byte[] bArr) {
        return ((((bArr[3] & 255) << 8) | (bArr[2] & 255)) << 16) | (bArr[0] & 255) | ((bArr[1] & 255) << 8);
    }

    private static void b(byte[] bArr, int i) {
        bArr[3] = (byte) (i >>> 24);
        bArr[2] = (byte) (i >>> 16);
        bArr[1] = (byte) (i >>> 8);
        bArr[0] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public final int a(RandomAccessFile randomAccessFile) {
        randomAccessFile.readFully(this.f1623b);
        return b(this.f1623b);
    }

    public final void a(ByteArrayOutputStream byteArrayOutputStream, int i) {
        a(this.f1622a, i);
        byteArrayOutputStream.write(this.f1622a);
    }

    public final void a(OutputStream outputStream, int i) {
        b(this.f1623b, i);
        outputStream.write(this.f1623b);
    }

    public final int b(RandomAccessFile randomAccessFile) {
        randomAccessFile.readFully(this.f1622a);
        return a(this.f1622a);
    }
}
