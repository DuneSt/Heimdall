printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $[;
		<< (self englishText truncateTo: 30);
		<< $]