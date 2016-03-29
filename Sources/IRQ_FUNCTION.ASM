			XDEF IRQ_FUNCTION
			
			
			
			XREF IRQ_FLAG
			
						;IF IRQ PRESSED, FLAG IS NOW HIGH, THIS NEEDS TO HAPPEN BEFORE DECIDE STATE
			
			
			
			
			
			
			
			
			
			IRQ_FUNCTION:
			PSHX
			PSHY
			PSHD
			
			
			
			
			END_IRQ_FUNCTION:
			PULD
			PULY
			PULX
			
			RTS
			