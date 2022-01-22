<script>
	
	async function getHits() {
		let response = await fetch('https://api.countapi.xyz/hit/1ccb732e-b55a-4404-ad3f-0f99c02fe44e');
		let hits = await response.json();
	}
</script>

<main>
	<div>
		<button on:click={getHits}>Update hits</button>
	</div>
</main>

<style>

</style>