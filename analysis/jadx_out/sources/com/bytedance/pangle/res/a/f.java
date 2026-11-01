package com.bytedance.pangle.res.a;

import java.io.DataInput;

/* loaded from: classes.dex */
public abstract class f implements DataInput {

    /* renamed from: a, reason: collision with root package name */
    public final i f1574a;

    public f(i iVar) {
        this.f1574a = iVar;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() {
        return this.f1574a.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() {
        return this.f1574a.readByte();
    }

    @Override // java.io.DataInput
    public char readChar() {
        return this.f1574a.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() {
        return this.f1574a.readDouble();
    }

    @Override // java.io.DataInput
    public float readFloat() {
        return this.f1574a.readFloat();
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) {
        this.f1574a.readFully(bArr);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) {
        this.f1574a.readFully(bArr, i, i2);
    }

    @Override // java.io.DataInput
    public int readInt() {
        return this.f1574a.readInt();
    }

    @Override // java.io.DataInput
    public String readLine() {
        return this.f1574a.readLine();
    }

    @Override // java.io.DataInput
    public long readLong() {
        return this.f1574a.readLong();
    }

    @Override // java.io.DataInput
    public short readShort() {
        return this.f1574a.readShort();
    }

    @Override // java.io.DataInput
    public String readUTF() {
        return this.f1574a.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() {
        return this.f1574a.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() {
        return this.f1574a.readUnsignedShort();
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) {
        return this.f1574a.skipBytes(i);
    }
}
