package com.bytedance.sdk.component.panglearmor.dq.d;

import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;

/* loaded from: classes.dex */
public abstract class ox {
    public static d dq(RandomAccessFile randomAccessFile, long j, long j2) {
        return dq(randomAccessFile.getChannel(), j, j2);
    }

    public static d dq(FileChannel fileChannel, long j, long j2) {
        fileChannel.getClass();
        return new p(fileChannel, j, j2);
    }
}
