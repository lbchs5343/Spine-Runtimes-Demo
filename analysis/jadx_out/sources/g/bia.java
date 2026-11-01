package g;

import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class bia extends InputStream implements DataInput {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteOrder f11627a = ByteOrder.LITTLE_ENDIAN;

    /* renamed from: b, reason: collision with root package name */
    public static final ByteOrder f11628b = ByteOrder.BIG_ENDIAN;

    /* renamed from: c, reason: collision with root package name */
    public final int f11629c;

    /* renamed from: d, reason: collision with root package name */
    public int f11630d;

    /* renamed from: e, reason: collision with root package name */
    public final DataInputStream f11631e;

    /* renamed from: f, reason: collision with root package name */
    public ByteOrder f11632f;

    public bia(InputStream inputStream) {
        this.f11632f = ByteOrder.BIG_ENDIAN;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f11631e = dataInputStream;
        int available = dataInputStream.available();
        this.f11629c = available;
        this.f11630d = 0;
        dataInputStream.mark(available);
    }

    public bia(byte[] bArr) {
        this(new ByteArrayInputStream(bArr));
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f11631e.available();
    }

    public final void g(long j) {
        int i = this.f11630d;
        if (i > j) {
            this.f11630d = 0;
            DataInputStream dataInputStream = this.f11631e;
            dataInputStream.reset();
            dataInputStream.mark(this.f11629c);
        } else {
            j -= i;
        }
        int i2 = (int) j;
        if (skipBytes(i2) != i2) {
            throw new IOException("Couldn't seek up to the byteCount");
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        this.f11630d++;
        return this.f11631e.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.f11631e.read(bArr, i, i2);
        this.f11630d += read;
        return read;
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        this.f11630d++;
        return this.f11631e.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() {
        int i = this.f11630d + 1;
        this.f11630d = i;
        if (i > this.f11629c) {
            throw new EOFException();
        }
        int read = this.f11631e.read();
        if (read >= 0) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        this.f11630d += 2;
        return this.f11631e.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) {
        int length = this.f11630d + bArr.length;
        this.f11630d = length;
        if (length > this.f11629c) {
            throw new EOFException();
        }
        if (this.f11631e.read(bArr, 0, bArr.length) != bArr.length) {
            throw new IOException("Couldn't read up to the length of buffer");
        }
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i, int i2) {
        int i3 = this.f11630d + i2;
        this.f11630d = i3;
        if (i3 > this.f11629c) {
            throw new EOFException();
        }
        if (this.f11631e.read(bArr, i, i2) != i2) {
            throw new IOException("Couldn't read up to the length of buffer");
        }
    }

    @Override // java.io.DataInput
    public final int readInt() {
        int i = this.f11630d + 4;
        this.f11630d = i;
        if (i > this.f11629c) {
            throw new EOFException();
        }
        DataInputStream dataInputStream = this.f11631e;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        int read3 = dataInputStream.read();
        int read4 = dataInputStream.read();
        if ((read | read2 | read3 | read4) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f11632f;
        if (byteOrder == f11627a) {
            return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
        }
        if (byteOrder == f11628b) {
            return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
        }
        throw new IOException("Invalid byte order: " + this.f11632f);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        return null;
    }

    @Override // java.io.DataInput
    public final long readLong() {
        long j;
        long j2;
        int i = this.f11630d + 8;
        this.f11630d = i;
        if (i > this.f11629c) {
            throw new EOFException();
        }
        DataInputStream dataInputStream = this.f11631e;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        int read3 = dataInputStream.read();
        int read4 = dataInputStream.read();
        int read5 = dataInputStream.read();
        int read6 = dataInputStream.read();
        int read7 = dataInputStream.read();
        int read8 = dataInputStream.read();
        if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f11632f;
        if (byteOrder == f11627a) {
            j = (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8);
            j2 = read;
        } else {
            if (byteOrder != f11628b) {
                throw new IOException("Invalid byte order: " + this.f11632f);
            }
            j = (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8);
            j2 = read8;
        }
        return j + j2;
    }

    @Override // java.io.DataInput
    public final short readShort() {
        int i = this.f11630d + 2;
        this.f11630d = i;
        if (i > this.f11629c) {
            throw new EOFException();
        }
        DataInputStream dataInputStream = this.f11631e;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        if ((read | read2) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f11632f;
        if (byteOrder == f11627a) {
            return (short) ((read2 << 8) + read);
        }
        if (byteOrder == f11628b) {
            return (short) ((read << 8) + read2);
        }
        throw new IOException("Invalid byte order: " + this.f11632f);
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        this.f11630d += 2;
        return this.f11631e.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        this.f11630d++;
        return this.f11631e.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() {
        int i = this.f11630d + 2;
        this.f11630d = i;
        if (i > this.f11629c) {
            throw new EOFException();
        }
        DataInputStream dataInputStream = this.f11631e;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        if ((read | read2) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f11632f;
        if (byteOrder == f11627a) {
            return (read2 << 8) + read;
        }
        if (byteOrder == f11628b) {
            return (read << 8) + read2;
        }
        throw new IOException("Invalid byte order: " + this.f11632f);
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i) {
        int min = Math.min(i, this.f11629c - this.f11630d);
        int i2 = 0;
        while (i2 < min) {
            i2 += this.f11631e.skipBytes(min - i2);
        }
        this.f11630d += i2;
        return i2;
    }
}
